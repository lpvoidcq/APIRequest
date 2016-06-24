//
//  ApiRequest.m
//  ApiRequestDemo
//
//  Created by CaoQuan on 16/6/15.
//  Copyright © 2016年 CaoQuan. All rights reserved.
//

#import "ApiRequest.h"


@implementation ApiRequest

+ (instancetype)request {
	return [[[self class] alloc] init];
}

- (id)init {
	self = [super init];
	if (self) {
		_sessionManager = [AFHTTPSessionManager manager];
		_sessionManager.requestSerializer = [AFJSONRequestSerializer serializer];
		self.requestMethod = REQUEST_POST;
	}
	return self;
}

- (void)sendRequestWithSuccess:(SuccessBlock)successBlock FailureBlock:(FailureBlock)failureBlock {
	if (!_sessionManager.reachabilityManager.isReachable) {	//无网络
		if (self.cacheMode == HttpRequestCachePolicyOffLine
			|| self.cacheMode == HttpRequestCachePolicyOnlyCache
			|| self.cacheMode == HttpRequestCachePolicyBoth) {
			LeResponse *response = [self getCacheWithUrl:self.url expireTime:self.cacheExpireTime parameters:self.param];
			if (response && successBlock) {	//如果有缓存，读取缓存数据返回
				successBlock(response);
				return;
			}
		}
		NSError *error = [NSError errorWithDomain:@"ApiRequestError" code:NetworkError userInfo:@{NSLocalizedDescriptionKey:@"网络出错，请检查网络"}];
		
	}
	

	
	
}

- (void)cancelRequest {

}

- (LeResponse*)getCacheWithUrl:(NSString *)url expireTime:(NSTimeInterval)expireTime parameters:(NSDictionary *)parameters {
	
	return nil;
}


//- (void)startRequest {
//	if ([self.requestMethod isEqualToString:REQUEST_POST]) {
//		self.task = [_sessionManager POST:self.url parameters:self.param progress:^(NSProgress * _Nonnull uploadProgress) {
//			
//		} success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
//			
//		} failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
//			
//		}];
//	} else if ([self.requestMethod isEqualToString:REQUEST_GET]) {
//	
//	} else if ([self.requestMethod isEqualToString:REQUEST_PUT]) {
//		
//	} else if ([self.requestMethod isEqualToString:REQUEST_DELETE]) {
//		
//	}
//}
@end
