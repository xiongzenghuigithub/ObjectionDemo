//
//  AppicationInjector.h
//  ObjectionDemo
//
//  Created by sfpay on 15/4/24.
//  Copyright (c) 2015年 XiongZengHui. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <JSObjection.h>
#import <JSObjectFactory.h>

@interface ObjectInjectorManager : NSObject

/* 对象依赖注入器 */
@property (strong, nonatomic) JSObjectionInjector *injector;

/* 对象工厂 */
@property (strong, nonatomic) JSObjectFactory *factory;

+ (instancetype)manager;

@end
