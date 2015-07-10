//
//  Controller2.m
//  ObjectionDemo
//
//  Created by sfpay on 15/4/24.
//  Copyright (c) 2015年 XiongZengHui. All rights reserved.
//

#import "Controller2.h"

@implementation Controller2

- (void)loadDataList {
    NSLog(@"Controller2 ....\n");
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"被注入的控制器对象";
    self.view.backgroundColor = [UIColor whiteColor];
}

@end
