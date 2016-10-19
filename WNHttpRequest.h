//
//  WNRequest.h
//  AFN封装
//
//  Created by 王宁 on 16/6/13.
//  Copyright © 2016年 王宁赛. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef void(^SuccessBlock)(id responseBody);
typedef void(^FailureBlock)(NSString *error);
@interface WNHttpRequest : NSObject
+(void)reqWithUrl:(NSString *)url parameters:(id)parameter reqMethod:(NSString *)method body:(NSString *)body successBlock:(SuccessBlock)successBlock failureBlock:(FailureBlock)failureBlock;
@end
