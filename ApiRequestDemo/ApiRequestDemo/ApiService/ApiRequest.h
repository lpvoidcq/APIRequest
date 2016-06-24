//
//  ApiRequest.h
//  ApiRequestDemo
//
//  Created by CaoQuan on 16/6/15.
//  Copyright © 2016年 CaoQuan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFNetworking.h"
#import "LeResponse.h"

#define REQUEST_POST @"POST"
#define REQUEST_GET @"GET"
#define REQUEST_PUT @"PUT"
#define REQUEST_DELETE @"DELETE"

typedef void(^SuccessBlock) (LeResponse *response);
typedef void(^FailureBlock) (LeResponse *response, NSError *error);

typedef NS_ENUM(NSUInteger, HttpRequestCachePolicy) {
	HttpRequestCachePolicyIgnoreCache,	//不使用缓存
	HttpRequestCachePolicyOffLine,	//离线状态才使用缓存
	HttpRequestCachePolicyOnlyCache,	//只要有缓存，就使用缓存数据
	HttpRequestCachePolicyBoth,	//有网络先加载缓存，同时网络请求继续，请求返回加载新数据
};

@interface ApiRequest : NSObject
@property (nonatomic, readonly) AFHTTPSessionManager *sessionManager;
@property (nonatomic, readonly) NSURLSessionDataTask *task;

@property (nonatomic, assign) HttpRequestCachePolicy cacheMode;
@property (nonatomic, assign) NSTimeInterval cacheExpireTime;	//ApiRequestCacheModeOnly 模式下使用
@property (nonatomic, copy) NSString *url;
@property (nonatomic, copy) NSDictionary *headParam;
@property (nonatomic, copy) NSDictionary *param;
@property (nonatomic, copy) NSString *requestMethod;

+ (instancetype)request;

- (void)sendRequestWithSuccess:(SuccessBlock)successBlock FailureBlock:(FailureBlock)failureBlock;
- (void)cancelRequest;
@end
