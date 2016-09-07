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
/**
 *  获取GameCenter信息，进行登录。用户登录，或者退出等时间，通过监听AGUserDidChangeNotification消息进行。
 *  详情查看AGConstants.h头文件的定义。如果本地存在未绑定的匿名账号，该接口会尝试绑定这个匿名账号。
 *
 *  @param onViewController 如果需要用户输入GameCenter账号，GameCenter UI会present在onViewController上面。
 */
+ (void)loginUsingGameCenterAndPresentOnViewControllerIfNeed:(nonnull UIViewController*)onViewController;
@end
