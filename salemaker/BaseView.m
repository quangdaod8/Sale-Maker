//
//  BaseView.m
//  salemaker
//
//  Created by Duy Quang on 4/1/16.
//  Copyright © 2016 duyquang. All rights reserved.
//

#import "BaseView.h"

@implementation BaseView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    _baseView.layer.borderWidth = 1;
    _baseView.layer.borderColor = [[UIColor lightGrayColor]CGColor];
    _baseView.clipsToBounds = YES;
    
}


- (IBAction)btnImgAction:(id)sender {
    UIImagePickerController *imagePickerController = [[UIImagePickerController alloc] init];
    imagePickerController.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    imagePickerController.allowsEditing = YES;
    imagePickerController.delegate = self;
    [[self topMostController] presentViewController:imagePickerController animated:YES completion:nil];
}

-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info {

    UIImage *originalImage, *editedImage, *imageToUse;
    
        editedImage = (UIImage *) [info objectForKey:
                                   UIImagePickerControllerEditedImage];
        originalImage = (UIImage *) [info objectForKey:
                                     UIImagePickerControllerOriginalImage];
        
        if (editedImage) {
            imageToUse = editedImage;
        } else {
            imageToUse = originalImage;
        }
    [_btnImg setBackgroundImage:imageToUse forState:UIControlStateNormal];
    [picker dismissViewControllerAnimated:YES completion:nil];
}

-(void)reloadInputViews {
    [_btnImg setBackgroundImage:[UIImage imageNamed:@"placeholder.project"] forState:UIControlStateNormal];
    _title.text = @"Tên Sản Phẩm";
    _price.text = @"Giá ₫";
    _descrip.text = @"Liên Hệ";
    
}

-(void)setDataWithTitle:(NSString *)title Price:(NSString *)price Description:(NSString *)description {
    _title.text = title;
    _price.text = price;
    _descrip.text = description;
}

- (UIViewController*) topMostController
{
    UIViewController *topController = [UIApplication sharedApplication].keyWindow.rootViewController;
    
    while (topController.presentedViewController) {
        topController = topController.presentedViewController;
    }
    
    return topController;
}
@end
