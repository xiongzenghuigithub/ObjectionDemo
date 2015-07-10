//
//  Car.m
//  ObjectionDemo
//
//  Created by sfpay on 15/4/24.
//  Copyright (c) 2015年 XiongZengHui. All rights reserved.
//

#import "Car.h"
#import <Objection.h>

@interface Car () {
    NSString *_name;
    NSInteger _num;
}

@end


@implementation Car
@synthesize engine, brakes, awake;

//设置需要填充对象的指针名
objection_requires(@"engine", @"brakes")

//initXxx函数
objection_initializer(initWithName:Num:)

- (id)initWithName:(NSString *)name Num:(NSInteger)num {
    self = [super init];
    if (self) {
        _name = name;
        _num = num;
    }
    return self;
}

/* 该对象是否被Objection创建完毕 */
- (void)awakeFromObjection {
    awake = YES;
}

- (void)doSomething {
    NSLog(@"Car ....\n");
    NSLog(@"name = %@ , num = %@\n", _name, _num);
}

@end
