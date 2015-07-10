//
//  BaseModule.h
//  ObjectionDemo
//
//  Created by sfpay on 15/4/24.
//  Copyright (c) 2015年 XiongZengHui. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <JSObjection.h>

@interface BaseModule : JSObjectionModule

@property (strong, nonatomic) JSObjectionInjector *injector;

+ (instancetype)module;
- (void)bindConfig;

@end
