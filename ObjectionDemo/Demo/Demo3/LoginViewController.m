//
//  LoginViewController.m
//  ObjectionDemo
//
//  Created by sfpay on 15/4/27.
//  Copyright (c) 2015年 XiongZengHui. All rights reserved.
//

#import "LoginViewController.h"

#import "Loginlization.h"
#import "ObjectInjectorManager.h"

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"切换接口实现类";
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.backgroundColor = [UIColor lightGrayColor];
    [btn setTitle:@"UserNameLogin" forState:UIControlStateNormal];
    btn.frame = CGRectMake(20, 100, 200, 40);
    [btn addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    btn.tag = 0;
    
    UIButton *btn1 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn1.backgroundColor = [UIColor lightGrayColor];
    [btn1 setTitle:@"GestureLogin" forState:UIControlStateNormal];
    btn1.frame = CGRectMake(20, 150, 200, 40);
    [btn1 addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn1];
    btn1.tag = 1;
    
    UIButton *btn2 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn2.backgroundColor = [UIColor lightGrayColor];
    [btn2 setTitle:@"PhonumLogin" forState:UIControlStateNormal];
    btn2.frame = CGRectMake(20, 200, 200, 40);
    [btn2 addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn2];
    btn2.tag = 2;
}

- (void)click:(UIButton *)sender {
    NSInteger tag = sender.tag;
    
    switch (tag) {
        case 0: {
            
            /* 接口实现类1 */
            ObjectInjectorManager *manager = [ObjectInjectorManager manager];
            
            //通过Injector查询到接口实现类对象
            id<LoginProtocol> userNameLogin = [manager.injector
                                               getObject:@protocol(LoginProtocol)
                                               named:UserNameLoginKey
                                               argumentList:nil];
            
            [userNameLogin handleLogin];
            
        }
            break;
            
        case 1: {
            
            /* 接口实现类2 */
            ObjectInjectorManager *manager = [ObjectInjectorManager manager];
            
            //通过Injector查询到接口实现类对象
            id<LoginProtocol> gestureLogin = [manager.injector getObject:@protocol(LoginProtocol)
                                                                   named:GestureLoginKey
                                                            argumentList:nil];
            
            [gestureLogin handleLogin];
            
        }
            break;
            
        case 2: {
            
            /* 接口实现类3 */
            ObjectInjectorManager *manager = [ObjectInjectorManager manager];
            
            //通过Injector查询到接口实现类对象
            id<LoginProtocol> phonumLogin = [manager.injector getObject:@protocol(LoginProtocol)
                                                                    named:PhonumLoginKey
                                                             argumentList:nil];
            
            [phonumLogin handleLogin];
            
        }
            break;
    }
}

@end
