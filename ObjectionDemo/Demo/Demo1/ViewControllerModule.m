//
//  ViewControllerFactory.m
//  ObjectionDemo
//
//  Created by sfpay on 15/4/24.
//  Copyright (c) 2015年 XiongZengHui. All rights reserved.
//

#import "ViewControllerModule.h"

//接口实现类
#import "Controller2.h"
#import "Controller3.h"


@implementation ViewControllerModule


- (void)bindConfig {
    
    //灵活切换接口的实现类
    
    //1. 接口实现类1
//    [self bindClass:[Controller2 class] toProtocol:@protocol(ControllerPushProtocol)];
    
    //2. 接口实现类2
    [self bindClass:[Controller3 class] toProtocol:@protocol(ControllerPushProtocol)];
}


@end
