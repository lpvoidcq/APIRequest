//
//  ApiRequest.h
//  ApiRequestDemo
//
//  Created by CaoQuan on 16/6/15.
//  Copyright © 2016年 CaoQuan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFNetworking.h"

#define REQUEST_POST @"POST"
#define REQUEST_GET @"GET"
#define REQUEST_PUT @"PUT"
#define REQUEST_DELETE @"DELETE"

@interface ApiRequest : NSObject
@property (nonatomic, readonly) AFHTTPSessionManager *sessionManager;
@property (nonatomic, strong) NSURLSessionDataTask *task;

//@property (nonatomic, copy) NSDictionary *head
@property (nonatomic, copy) NSDictionary *param;
@property (nonatomic, copy) NSString *requestMethod;

- (void)startRequest;
@end
