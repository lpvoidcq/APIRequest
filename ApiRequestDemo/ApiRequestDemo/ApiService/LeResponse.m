//
//  LeResponse.m
//  ApiRequestDemo
//
//  Created by CaoQuan on 16/6/16.
//  Copyright © 2016年 CaoQuan. All rights reserved.
//

#import "LeResponse.h"

@implementation LeResponse
+ (instancetype)responseWithObject:(id)responseObject {
	LeResponse *response = [[LeResponse alloc] initWithObject:responseObject];
	return response;
}

- (instancetype)initWithObject:(id)responseObject {
	self = [super init];
	if (self) {
		self.responseObject = responseObject;
	}
	
	return self;
}
@end
