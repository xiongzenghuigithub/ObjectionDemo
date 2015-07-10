//
//  LoginHandleModule.m
//  ObjectionDemo
//
//  Created by sfpay on 15/4/27.
//  Copyright (c) 2015年 XiongZengHui. All rights reserved.
//

#import "LoginHandleModule.h"

/* 导入接口实现类 */
#import "Loginlization.h"
#import "UserNameLogin.h"
#import "GestureLogin.h"
#import "PhonumLogin.h"

@implementation LoginHandleModule

- (void)bindConfig {
    
    //一个接口同时绑定多个实现类对象，每个实现类起一个名字
    
    [self bindClass:[UserNameLogin class]
         toProtocol:@protocol(LoginProtocol)
            inScope:JSObjectionScopeSingleton//单例存在
              named:UserNameLoginKey];
    
    [self bindClass:[GestureLogin class]
         toProtocol:@protocol(LoginProtocol)
            inScope:JSObjectionScopeNormal//多实例
              named:GestureLoginKey];
    
    [self bindClass:[PhonumLogin class]
         toProtocol:@protocol(LoginProtocol)
            inScope:JSObjectionScopeNone//多实例
              named:PhonumLoginKey];
    
}

@end
