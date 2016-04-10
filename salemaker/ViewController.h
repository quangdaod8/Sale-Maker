//
//  ViewController.h
//  salemaker
//
//  Created by Duy Quang on 4/1/16.
//  Copyright © 2016 duyquang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseView.h"
#import <GoogleMobileAds/GoogleMobileAds.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIView *productView;
@property (weak, nonatomic) IBOutlet UIButton *btnEnterInfo;
@property (weak, nonatomic) IBOutlet UIButton *btnHint;

@property (weak, nonatomic) BaseView *base;
@property (assign, nonatomic) BOOL isFisrtLoad;
@property (weak, nonatomic) IBOutlet GADBannerView *banner;

- (IBAction)btnEnterAction:(id)sender;
- (IBAction)btnHintAction:(id)sender;
- (IBAction)btnResetAction:(id)sender;

@end

