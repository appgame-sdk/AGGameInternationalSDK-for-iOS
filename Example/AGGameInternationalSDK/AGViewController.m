//
//  AGViewController.m
//  AGGameInternationalSDK
//
//  Created by supermao on 09/02/2016.
//  Copyright (c) 2016 supermao. All rights reserved.
//

#import "AGViewController.h"
#import <AGGameInternationalSDK/AGGameInternationalSDK.h>
@interface AGViewController ()

@end

@implementation AGViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
}


- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    [AGShare shareToFacebookOnViewController:self initialText:nil image:nil URL:nil completionBlock:^(AGShareResult result) {
        
    }];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)gameCenterLogin:(id)sender{
    //使用Game Center登录
    [AGUser loginUsingGameCenterAndPresentOnViewControllerIfNeed:self];
}

- (IBAction)touristLogin:(id)sender{
    //游客登录
    [AGUser loginAnonymouslyWithCompletionBlock:^(AGUser * _Nonnull user, NSError * _Nonnull error) {
        
    }];
}

- (IBAction)shareToFaceBook:(id)sender{
    //Facebook分享
    UIImage *dog = [UIImage imageNamed:@"dog.jpg"];
    NSURL *appgameURL = [NSURL URLWithString:@"http://www.appgame.com"];
    [AGShare shareToFacebookOnViewController:self initialText:@"分享" image:dog URL:appgameURL completionBlock:^(AGShareResult result) {
        
    }];
}

- (IBAction)showConsumableBuy:(id)sender {
    //消耗品内购
    [[AGPurchase sharedInstance] purchaseWithProductIdentifier:@"com.youcan.coincoin"
                                                   callBackUrl:@"http://www.baidu.com"
                                                       tradeId:[[NSDate date] description]
                                                   privateInfo:@{@"haha shenme gui":@"xxxxxxx"}
                                                       success:^(SKPaymentTransaction *transaction) {
                                                           NSLog(@"购买成功");
                                                       } failure:^(NSError *error) {
                                                           NSLog(@"购买失败");
                                                       }];
}
- (IBAction)showNonConsumableBuy:(id)sender {
    //非消耗品内购
    [[AGPurchase sharedInstance] purchaseWithProductIdentifier:@"com.youcan.coin2"
                                                   callBackUrl:@"http://www.baidu.com"
                                                       tradeId:[[NSDate date] description]
                                                   privateInfo:@{@"haha shenme gui":@"xxxxxxx"}
                                                       success:^(SKPaymentTransaction *transaction) {
                                                           
                                                           NSLog(@"购买成功");
                                                       } failure:^(NSError *error) {
                                                           
                                                           NSLog(@"购买失败");
                                                       }];
}
- (IBAction)restoreBuy:(id)sender {
    //恢复购买
    [[AGPurchase sharedInstance] restoreTransactionsOnSuccess:^(NSArray *transactions) {
        NSLog(@"恢复购买成功%@", transactions);
    } failure:^(NSError *error) {
        NSLog(@"恢复购买失败%@", error);
    }];
}

@end
