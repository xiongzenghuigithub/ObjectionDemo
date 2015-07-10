//
//  Controller1.m
//  ObjectionDemo
//
//  Created by sfpay on 15/4/24.
//  Copyright (c) 2015年 XiongZengHui. All rights reserved.
//

#import "Controller1.h"

#import "ObjectInjectorManager.h"
#import "ControllerPushProtocol.h"

@implementation Controller1



- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"控制器对象注入";
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeContactAdd];
    btn.frame = CGRectMake(20, 100, 200, 40);
    [btn addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)click {
    
    //1. 获取全局Injector
    ObjectInjectorManager *manager = [ObjectInjectorManager manager];
    
    //2. 注入接口实现类对象【使用id<接口> 来声明指针，避免直接依赖其他具体类名】
    id<ControllerPushProtocol> vc = [manager.injector getObject:@protocol(ControllerPushProtocol)];

    //3. 使用注入的依赖对象
    [vc loadDataList];

}

@end
