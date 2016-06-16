//
//  ApiRequest.m
//  ApiRequestDemo
//
//  Created by CaoQuan on 16/6/15.
//  Copyright © 2016年 CaoQuan. All rights reserved.
//

#import "ApiRequest.h"


@implementation ApiRequest

- (id)init {
	self = [super init];
	if (self) {
		_sessionManager = [AFHTTPSessionManager manager];
		_sessionManager.requestSerializer = [AFJSONRequestSerializer serializer];
	}
	return self;
}

- (void)startRequest {
	if (self.requestMethod) {
	}
}
@end
