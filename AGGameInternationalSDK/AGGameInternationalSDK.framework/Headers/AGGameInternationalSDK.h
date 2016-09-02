//
//  AGGameInternationalSDK.h
//  AGGameInternationalSDK
//
//  Created by Mao on 16/8/29.
//  Copyright © 2016年 AppGame. All rights reserved.
//
#import <Foundation/Foundation.h>
#import <AGGameInternationalSDK/AGConstants.h>
#import <AGGameInternationalSDK/AGPurchase.h>
#import <AGGameInternationalSDK/AGUser.h>
#import <AGGameInternationalSDK/AGUser+AGUI.h>
//! Project version number for AGJointOperationSDK.
FOUNDATION_EXPORT double AGGameInternationalSDKVersionNumber;

//! Project version string for AGJointOperationSDK.
FOUNDATION_EXPORT const unsigned char AGGameInternationalSDKVersionString[];


/**
 任玩堂海外联运SDK类。
 */
@interface AGGameInternationalSDK : NSObject

/**
 设置SDK的ClientId和ClientSecret。这两个值向任玩堂申请获得。
 @param clientId 客户端id
 @param clientSecret 客户端secret
 */
+ (void)setClientId:(NSString *)clientId clientSecret:(NSString *)clientSecret;

/**
 设置SDK的ClientId和ClientSecret。这两个值向任玩堂申请获得。
 @param clientId 客户端id
 @param clientSecret 客户端secret
 @param gameServerId CP服务器id
 */
+ (void)setClientId:(NSString *)clientId clientSecret:(NSString *)clientSecret gameServerId:(NSString*)gameServerId;

/**
 获得客户端id.
 */
+ (NSString *)getClientId;

/**
 获得客户端secret.
 */
+ (NSString *)getClientSecret;

/**
 获得CP服务器id.
 */
+ (NSString *)getGameServerId;

/**
 设置正式环境，还是测试环境。
 @param isProduction YES为正式环境，NO为测试环境。默认为YES.
 */
+ (void)setProductionMode:(BOOL)isProduction;

/**
 正式环境还是测试环境
 */
+ (BOOL)isProductionMode;

/**
 设置SDK支持的屏幕方向。例如只支横屏可以设置UIInterfaceOrientationMaskLandscape。默认设置为UIInterfaceOrientationMaskAll。
 @param mask 支持的屏幕方向的掩码.
 */
+ (void)setSupportedInterfaceOrientations:(UIInterfaceOrientationMask)mask;
+ (UIInterfaceOrientationMask)supportedInterfaceOrientations;
@end
