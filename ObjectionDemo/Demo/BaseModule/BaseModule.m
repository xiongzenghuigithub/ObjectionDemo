//
//  BaseModule.m
//  ObjectionDemo
//
//  Created by sfpay on 15/4/24.
//  Copyright (c) 2015年 XiongZengHui. All rights reserved.
//

#import "BaseModule.h"



@implementation BaseModule

+ (instancetype)module {
    static id module  = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        module = [[[self class] alloc] init];
    });
    return module;
}

- (instancetype)init {
    self = [super init];
    if (self) {
        [self bindConfig];
    }
    return self;
}

- (void)bindConfig
{
    //子类覆写
}


@end
