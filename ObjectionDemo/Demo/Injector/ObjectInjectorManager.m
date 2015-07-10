//
//  AppicationInjector.m
//  ObjectionDemo
//
//  Created by sfpay on 15/4/24.
//  Copyright (c) 2015年 XiongZengHui. All rights reserved.
//

#import "ObjectInjectorManager.h"

//1. 全局App都使用的公告模块
#import "ApplicationModule.h"

//2. ViewController模块
#import "ViewControllerModule.h"

//3. Login模块
#import "LoginHandleModule.h"

@implementation ObjectInjectorManager

+ (instancetype)manager {
    static ObjectInjectorManager *injector = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        injector = [[ObjectInjectorManager alloc] init];
    });
    return injector;
}

- (instancetype)init {
    self = [super init];
    if (self) {
        
        [self initInjector];
        [self initFactory];
    }
    return self;
}

- (void)initInjector {
    
    //1. 创建对象注入器
    _injector = [JSObjection defaultInjector];
    _injector = _injector ? : [JSObjection createInjector];
    
    //2. 创建所有模块对象的Module
    ApplicationModule *appModule = [ApplicationModule module];
    ViewControllerModule *controllerModule = [[ViewControllerModule alloc] init];
    LoginHandleModule *loginModule = [[LoginHandleModule alloc] init];
    
    //3. 将所有Module注册到Injector
    _injector = [_injector withModules:appModule, controllerModule, loginModule, nil];
    
    //3. 设置全局对象注入器
    [JSObjection setDefaultInjector:_injector];
}

- (void)initFactory {
    
    _factory = [[JSObjectFactory alloc] initWithInjector:_injector];
}

@end
