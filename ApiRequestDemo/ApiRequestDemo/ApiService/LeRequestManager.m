//
//  LeRequestManager.m
//  ApiRequestDemo
//
//  Created by CaoQuan on 16/6/15.
//  Copyright © 2016年 CaoQuan. All rights reserved.
//

#import "LeRequestManager.h"

@implementation LeRequestManager
+ (ApiRequest*)postRequest:(NSString*)url params:(NSDictionary*)param config:(ConfigBlock)configBlock success:(SuccessBlock)successBlock FailureBlock:(FailureBlock)failureBlock {
	ApiRequest *request = [[ApiRequest alloc] init];
	
	if (configBlock)
		configBlock(request);
	[request startRequest];
	return request;
}
@end
