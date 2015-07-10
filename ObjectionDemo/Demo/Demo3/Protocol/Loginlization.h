//
//  Loginlization.h
//  ObjectionDemo
//
//  Created by sfpay on 15/4/27.
//  Copyright (c) 2015年 XiongZengHui. All rights reserved.
//

#import <Foundation/Foundation.h>

FOUNDATION_EXPORT NSString *const UserNameLoginKey;
FOUNDATION_EXPORT NSString *const GestureLoginKey;
FOUNDATION_EXPORT NSString *const PhonumLoginKey;

#pragma mark - 接口
@protocol LoginProtocol <NSObject>

@required
- (void)handleLogin;

@end

#pragma mark - 接口默认实现类
@interface LoginHandlebase : NSObject <LoginProtocol>

//1. 基类提供公共方法

@end