//
//  LeResponse.h
//  ApiRequestDemo
//
//  Created by CaoQuan on 16/6/16.
//  Copyright © 2016年 CaoQuan. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, ApiRequestErrorCode) {
	UnkownError = 999999999,			//默认错误码，如果服务器端未返回时定义此错误码
	NetworkError = 999999998,
	UnableGetAccessToken = 999999990,	//无法获取AccessToken
	UnableGetSessionToken = 999999997,	//无法获取SessioToken
	UserSessionExpired = 401000002,		//UserSession过期，需要重新申请User Session
	UserSessionUnMatch = 401000003,		//UserSession不匹配，需要重新申请User Session
	UserTokenExpired = 401000001,		//UserToken过期，需要重新登录
	AccessTokenExpired = 403000002,		//AccessToken过期，需要重启申请AccessToken
};

@interface LeResponse : NSObject
@property (nonatomic, strong) id responseObject;

@property (nonatomic, readonly) NSInteger resultCode;
@property (nonatomic, assign) BOOL success;
@property (nonatomic, assign) BOOL hasData;

+ (instancetype)responseWithObject:(id)responseObject;

- (instancetype)initWithObject:(id)responseObject;
@end
