//
//  ViewController.m
//  salemaker
//
//  Created by Duy Quang on 4/1/16.
//  Copyright © 2016 duyquang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _banner.adUnitID = @"ca-app-pub-9719677587937425/4420992994";
    _banner.rootViewController = self;
    [_banner loadRequest:[GADRequest request]];
    
    _isFisrtLoad = YES;
    
    _base = [[[NSBundle mainBundle]loadNibNamed:@"BaseView" owner:self options:nil] firstObject];
    _base.frame = _productView.bounds;
    [_productView addSubview:_base];
    
    self.navigationItem.title = @"Sale Maker";
    UIBarButtonItem *next = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAction target:self action:@selector(tiepTheo)];
    self.navigationItem.rightBarButtonItem = next;
    
    UIBarButtonItem *info = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemRefresh target:self action:@selector(reset)];
    self.navigationItem.leftBarButtonItem = info;
}

-(void)viewDidAppear:(BOOL)animated {
    
}

-(void)tiepTheo {
    NSString* title = [NSString stringWithFormat:@"%@\n%@\n\n%@",_base.title.text,_base.price.text,_base.descrip.text];
    UIActivityViewController *save = [[UIActivityViewController alloc]initWithActivityItems:@[title,[self takeSnapshotOfView:_base]] applicationActivities:nil];
    save.excludedActivityTypes = @[UIActivityTypePrint,UIActivityTypeAssignToContact,UIActivityTypeCopyToPasteboard];
    
    [self presentViewController:save animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnEnterAction:(id)sender {
    UIAlertController *enter = [UIAlertController alertControllerWithTitle:@"Thông tin" message:@"Nhập thông tin sản phẩm" preferredStyle:UIAlertControllerStyleAlert];
    
    [enter addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
        textField.placeholder = @"Tên Sản Phẩm";
        textField.autocapitalizationType = UITextAutocapitalizationTypeWords;
        [textField setClearButtonMode:UITextFieldViewModeAlways];
        if(!_isFisrtLoad) textField.text = _base.title.text;
    }];
    [enter addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
        textField.placeholder = @"Giá";
        [textField setClearButtonMode:UITextFieldViewModeAlways];
        textField.keyboardType = UIKeyboardTypeDecimalPad;
        if(!_isFisrtLoad) textField.text = [_base.price.text stringByPaddingToLength:_base.price.text.length - 2 withString:@"" startingAtIndex:0];
    }];
    [enter addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
        textField.placeholder = @"Liên Hệ";
        [textField setClearButtonMode:UITextFieldViewModeAlways];
        textField.autocapitalizationType = UITextAutocapitalizationTypeWords;
        if(!_isFisrtLoad) textField.text = _base.descrip.text;
    }];
    
    UIAlertAction *ok = [UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
        [_base setDataWithTitle:enter.textFields[0].text Price:[NSString stringWithFormat:@"%@ ₫", enter.textFields[1].text] Description:enter.textFields[2].text];
        _isFisrtLoad = NO;
    }];
    UIAlertAction *huy = [UIAlertAction actionWithTitle:@"Huỷ" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        [enter dismissViewControllerAnimated:YES completion:nil];
    }];
    
    [enter addAction:ok];
    [enter addAction:huy];
    
    [self presentViewController:enter animated:YES completion:nil];
}

- (UIImage *)takeSnapshotOfView:(UIView *)view
{
    UIGraphicsBeginImageContextWithOptions(view.bounds.size, view.opaque, 0.0);
    [view drawViewHierarchyInRect:CGRectMake(0, 0, view.frame.size.width, view.frame.size.height) afterScreenUpdates:YES];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

- (IBAction)btnHintAction:(id)sender {
}

- (IBAction)btnResetAction:(id)sender {
    
    UIAlertController *info = [UIAlertController alertControllerWithTitle:@"Sale Maker" message:@"Ứng dụng giúp bạn tạo hình ảnh sản phẩm Nhanh - Đẹp - Hiệu Quả.\nChia sẻ Sale Maker cho các đồng nghiệp, bạn bè cùng sử dụng nhé.\nChúc bạn buôn may bán đắt :)" preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *share = [UIAlertAction actionWithTitle:@"Chia sẻ Sale Maker" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        UIActivityViewController *activity = [[UIActivityViewController alloc]initWithActivityItems:@[@"Ứng dụng Sale Maker giúp bạn tạo hình ảnh sản phẩm kinh doanh Online Nhanh - Đẹp - Hiệu Quả.",[NSURL URLWithString:@"https://itunes.apple.com/us/app/sale-maker/id1099016095?ls=1&mt=8"]] applicationActivities:nil];
        [self presentViewController:activity animated:YES completion:nil];
    }];
    UIAlertAction *rate = [UIAlertAction actionWithTitle:@"Đánh giá ứng dụng" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"itms-apps://itunes.apple.com/WebObjects/MZStore.woa/wa/viewContentsUserReviews?id=1099016095&onlyLatestVersion=true&pageNumber=0&sortOrdering=1&type=Purple+Software"]];
    }];
    UIAlertAction *cancel = [UIAlertAction actionWithTitle:@"Huỷ" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        [info dismissViewControllerAnimated:YES completion:nil];
    }];
    
    [info addAction:share];
    [info addAction:rate];
    [info addAction:cancel];
    
    [self presentViewController:info animated:YES completion:nil];
}
-(void)reset {
    [_base reloadInputViews];
    _isFisrtLoad = YES;
}
@end
