//
//  LeRequestManager.h
//  ApiRequestDemo
//
//  Created by CaoQuan on 16/6/15.
//  Copyright © 2016年 CaoQuan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ApiRequest.h"
#import "LeResponse.h"

typedef void(^ConfigBlock) (ApiRequest *response);
typedef void(^SuccessBlock) (LeResponse *response);
typedef void(^FailureBlock) (LeResponse *response, NSError *error);

@interface LeRequestManager : NSObject
+ (ApiRequest*)postRequest:(NSString*)url params:(NSDictionary*)param config:(ConfigBlock)configBlock success:(SuccessBlock)successBlock FailureBlock:(FailureBlock)failureBlock;
@end
