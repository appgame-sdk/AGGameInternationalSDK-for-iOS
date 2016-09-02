//
//  AGUser+AGUI.h
//  AGGameInternationalSDK
//
//  Created by Mao on 16/3/9.
//  Copyright © 2016年 AppGame. All rights reserved.
//
@import UIKit;

#import <AGGameInternationalSDK/AGUser.h>

typedef void(^LoginComplectionBlock)(AGUser * _Nullable user, NSError * _Nullable error);


@interface AGUser (AGUI_GameCenter)
+ (void)loginAndPresentOnViewControllerIfNeed:(nonnull UIViewController*)onViewController;
@end
