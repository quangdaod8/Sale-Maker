//
//  BaseView.h
//  salemaker
//
//  Created by Duy Quang on 4/1/16.
//  Copyright © 2016 duyquang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseView : UIView<UINavigationControllerDelegate,UIImagePickerControllerDelegate>
@property (weak, nonatomic) IBOutlet BaseView *baseView;
@property (weak, nonatomic) IBOutlet UILabel *title;
@property (weak, nonatomic) IBOutlet UILabel *price;
@property (weak, nonatomic) IBOutlet UILabel *descrip;
@property (weak, nonatomic) IBOutlet UIButton *btnImg;
- (IBAction)btnImgAction:(id)sender;

-(void)setDataWithTitle:(NSString*)title Price:(NSString*)price Description:(NSString*)description;


@end
