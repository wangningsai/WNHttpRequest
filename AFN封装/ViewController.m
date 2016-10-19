//
//  ViewController.m
//  AFN封装
//
//  Created by 王宁 on 16/6/13.
//  Copyright © 2016年 王宁赛. All rights reserved.
//

#import "ViewController.h"
#import "WNHttpRequest.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    reqWithUrl服务器url地址
//    reqMethod GET/POST请求方式
    NSDictionary *parameters = @{};//参数
    [WNHttpRequest reqWithUrl:@"www.baidu.com" parameters:parameters reqMethod:@"POST" body:nil successBlock:^(id responseBody) {
        NSLog(@"%@",responseBody);
    } failureBlock:^(NSString *error) {
        NSLog(@"%@",error);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
