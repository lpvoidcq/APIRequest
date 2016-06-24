//
//  LeApiRquest.h
//  ApiRequestDemo
//
//  Created by CaoQuan on 16/6/23.
//  Copyright © 2016年 CaoQuan. All rights reserved.
//

#import "ApiRequest.h"

@interface LeApiRquest : ApiRequest
@property (nonatomic, assign) BOOL needAccessToken;
@property (nonatomic, assign) BOOL needSessionToken;

@end
