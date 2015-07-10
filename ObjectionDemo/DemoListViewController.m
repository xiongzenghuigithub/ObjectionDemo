//
//  DemoListViewController.m
//  ObjectionDemo
//
//  Created by sfpay on 15/4/24.
//  Copyright (c) 2015年 XiongZengHui. All rights reserved.
//

#import "DemoListViewController.h"

#import "Controller0.h"
#import "Controller1.h"
#import "LoginViewController.h"

@interface DemoListViewController () {
    NSMutableArray *_dataList;
}

@end

@implementation DemoListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _dataList = @[@"依赖对象注入",
                  @"给Protocol注册一个实现类",
                  @"1接口-N实现类"];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [_dataList count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"myCell"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"myCell"];
    }
    cell.detailTextLabel.text = _dataList[[indexPath row]];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    NSInteger row = [indexPath row];
    
    switch (row) {
        case 0: {
            Controller0 *vc = [[Controller0 alloc] init];
            [self.navigationController pushViewController:vc animated:YES];
        }
            break;
            
        case 1: {
            Controller1 *vc = [[Controller1 alloc] init];
            [self.navigationController pushViewController:vc animated:YES];
        }
            break;
            
        case 2: {
            LoginViewController *vc = [[LoginViewController alloc] init];
            [self.navigationController pushViewController:vc animated:YES];
        }
            break;
            
        default:
            break;
    }
}

@end
