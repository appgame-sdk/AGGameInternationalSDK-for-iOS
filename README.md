# AGGameInternationalSDK
[任玩堂](http://appgame.com)海外联运iOS SDK
## 系统要求

- iOS Target : >= iOS 7

## 功能特性

- [x] 支持GameCenter登录任玩堂账号
- [x] 支持游客登录
- [x] 支持苹果内购
- [x] 支持Facebook分享
- [x] 内置AppsFlyer数据统计

## 不支持功能

测试环境不完全支持HTTPS。

## 快速开始

先来看看 AGGameInternationalSDK 接入的步骤

### CocoaPods方式接入

- 配置你的 Podfile 文件，添加如下配置信息

```shell
pod 'AGGameInternationalSDK'
```

- 安装 CocoaPods 依赖

```shell
pod install
```

或

```shell
pod update
```

- Done! 运行你工程的 workspace


### 示例代码

在需要的地方添加

```Objective-C
#import <AGJointOperationSDK/AGJointOperationSDK.h>
```
初始化

```Objective-C
[AGGameInternationalSDK setClientId:@"你的id" clientSecret:@"你的secret" appleAppID:@"你的应用的Apple Id"];
//默认为正式环境，NO为测试环境，内购沙盒测试请设置为NO
[AGGameInternationalSDK setProductionMode:NO];
```

后续步骤参考Example/AGGameInternationalSDK 里面的工程。

###回调地址说明

用户完成支付之后，SDK服务器会给开发商服务器发起POST回调，通知订单处理结果。开发商需要在内购的时候传入回调地址。

####回调参数说明：

名字 | 可选 | 说明
------- | ------- | ------
trade_id | 否 | 开发商提交的订单号
appgame_order_id | 否 | 支付系统生成的订单号
amount | 否 | 交易金额，以"元"为单位
status | 否 | 订单支付状态：complete - 完成 failed - 失败 canceled - 已取消
time | 否 | 回调请求发起时间，Unix时间戳形式
provider | 否 | 支付渠道标识码，根据 CP 接入的渠道而异，目前苹果的标识码为Apple
private_info | 是 | CP 在发起支付请求时，若提供 private_info，则原值返回，若未提供，则无此参数
sign | 否 | 通知请求签名，用于验证通知有效性。

#### 回调过程

开发商收到通知之后请处理支付结果，并返回字符串 ok 表示回调处理成功。
若SDK服务器发送通知请求之后，未得到 ok 响应，则会在一段时间内尝试重新发起请求。
尝试重发间隔为：1 分钟，2 分钟，10 分钟，30 分钟，1 小时，2 小时，4 小时，12 小时，24 小时，最多重发 9 次。



####如何生成签名（Sign）

将所有参数键值对（参数=值，不包含sign本身）按照参数名从小到大顺序排序，用&符号连接起来，计算出MD5值，连接上开发商的APP Secret再次计算 MD5 值即为签名值：

```
md5(md5("参数1=值1&参数2=值2")+秘钥)
```
###验证用户信息有效性
通过SDK客户端获取Access Token成功后，如果对安全要就比较高，可以用它向SDK服务器请求用户资源来进行认证，示例如下：

```
GET https://passport.appgame.com/resource/userinfo?access_token=aKmsEfsLLmLDpJneSTmyykYYNe4jKiwvn20YAb6v
```

测试环境下请调用测试服务器接口：

```
GET http://passport.test.appgame.com/resource/userinfo?access_token=aKmsEfsLLmLDpJneSTmyykYYNe4jKiwvn20YAb6v
```
如果请求成功，服务器将返回类似如下格式的 JSON 数据：

```JSON
{
    "id":"1000",
    "passport_id":"1000",
    "username":"Fishdrowned",
    "email":"fishdrowned@gmail.com",
    "mobile":"137XXXXXXXX",
    "avatar": "http://avatar.static.appgame.com/uploads/avatar/4d/Z9/4cCx.png",
    "nickname":"Fishdrowned",
    "sex": 0, 
    "province": 1, 
    "province_name":"北京市",
    "city": 2,
    "city_name":"市区"
}
```
如果请求失败，服务器将返回类似如下格式的 JSON 数据：

```JSON
{
    "status":401,
    "error":"unauthorized",
    "error_message":"Access token is not valid"
}
```
## 版本历史
- 0.1.0
	- 支持GameCenter登录任玩堂账号
	- 支持游客登录
	- 封装StoreKit
	- 支持Facebook分享
	- 内置AppsFlyer数据统计






