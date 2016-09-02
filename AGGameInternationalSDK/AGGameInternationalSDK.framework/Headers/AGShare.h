//
//  AGShare.h
//  AGGameInternationalSDK
//
//  Created by Mao on 16/9/1.
//  Copyright © 2016年 AppGame. All rights reserved.
//

#import <Foundation/Foundation.h>
@import UIKit;

typedef NS_ENUM(NSUInteger, AGShareResult) {
    AGShareResultNotAvailable,      //分享不可用。很可能是未设置系统内置社交平台账号。
    AGShareResultCancelled,         //用户取消分享
    AGShareResultDone               //分享确定
};

@interface AGShare : NSObject
/**
 *  分享内容到Facebook
 *
 *  @param onViewController 呈现分享控件的控制器
 *  @param initialText      初始化内容
 *  @param image            需要被分享的图片
 *  @param URL              分享点击链接
 *  @param block            回调block
 *
 */
+ (void)shareToFacebookOnViewController:(UIViewController*)onViewController initialText:(NSString*)initialText image:(UIImage *)image URL:(NSURL*)URL completionBlock:(void(^)(AGShareResult result))block;
@end
