//
//  Car.h
//  ObjectionDemo
//
//  Created by sfpay on 15/4/24.
//  Copyright (c) 2015年 XiongZengHui. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Engine.h"
#import "Brakes.h"

@interface Car : NSObject {
    Engine *engine;
    Brakes *brakes;
    BOOL awake;
}

//下面两个指针引用的对象由注入器创建 【.m中设置一下需要被填充的指针名】
@property(nonatomic, strong) Engine *engine;
@property(nonatomic, strong) Brakes *brakes;
@property(nonatomic) BOOL awake;

- (id)initWithName:(NSString *)name Num:(NSInteger)num;

- (void)doSomething;

@end
