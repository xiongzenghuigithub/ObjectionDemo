//
//  Controller0.m
//  ObjectionDemo
//
//  Created by sfpay on 15/4/24.
//  Copyright (c) 2015年 XiongZengHui. All rights reserved.
//

#import "Controller0.h"

#import "ObjectInjectorManager.h"
#import "Car.h"

@implementation Controller0

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"依赖对象的注入";
    self.view.backgroundColor = [UIColor whiteColor];
    
    
//    [self test1];
//    [self test2];
    [self test3];
}

/* 直接通过Injector获取依赖对象 */
- (void)test1 {
    
    //1. 从Injector创建对象
    ObjectInjectorManager *manager = [ObjectInjectorManager manager];
    
    //2. 注入依赖对象
    Car *car = [manager.injector getObject:[Car class]];
    
    //3. 测试
    [car doSomething];
    [car.engine doSomething];
    [car.brakes doSomething];
}
/* 通过Factory获取依赖对象 */
- (void)test2 {
    ObjectInjectorManager *manager = [ObjectInjectorManager manager];
    
    Car *car = [manager.factory getObject:[Car class]];
    
    [car doSomething];
    [car.engine doSomething];
    [car.brakes doSomething];
}

/* Objection_initlizer */
- (void)test3 {
    ObjectInjectorManager *manager = [ObjectInjectorManager manager];
    
    Car *car = [manager.factory getObjectWithArgs:[Car class], @"Car", @19, nil];
    
    [car doSomething];
}

@end
