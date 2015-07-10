//
//  ApplicationModule.m
//  ObjectionDemo
//
//  Created by sfpay on 15/4/24.
//  Copyright (c) 2015年 XiongZengHui. All rights reserved.
//

#import "ApplicationModule.h"
#import "Car.h"

@implementation ApplicationModule

- (void)bindConfig
{
    //1. 相当于alloc出来的一个新对象
    [self bindClass:[Car class] inScope:JSObjectionScopeNormal];
    
    //2. 单例对象
    [self bindClass:[Car class] inScope:JSObjectionScopeSingleton];
}



@end
