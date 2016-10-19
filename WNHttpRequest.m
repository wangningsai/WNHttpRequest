//
//  WNRequest.m
//  AFN封装
//
//  Created by 王宁 on 16/6/13.
//  Copyright © 2016年 王宁赛. All rights reserved.
//

#import "WNHttpRequest.h"
#import "AFNetworking.h"
#import <AFHTTPSessionManager.h>
@implementation WNHttpRequest
#pragma mark - 服务器请求
+(void)reqWithUrl:(NSString *)url parameters:(id)parameter reqMethod:(NSString *)method body:(NSString *)body successBlock:(SuccessBlock)successBlock failureBlock:(FailureBlock)failureBlock
{
    AFHTTPSessionManager *manager=[[[self class] alloc]init];
    
    NSString *uppercaseReqMethod=[method uppercaseString];
    NSLog(@"%@",uppercaseReqMethod);
    if ([uppercaseReqMethod isEqualToString:@"POST"]) {
        [manager POST:url parameters:parameter success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
            successBlock(responseObject);
        } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
            failureBlock([error localizedDescription]);
        }];
            }
    else if([uppercaseReqMethod isEqualToString:@"GET"])
    {
        [manager GET:url parameters:parameter success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
            successBlock(responseObject);
        } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
            failureBlock([error localizedDescription]);
        }];
            }
}


@end
