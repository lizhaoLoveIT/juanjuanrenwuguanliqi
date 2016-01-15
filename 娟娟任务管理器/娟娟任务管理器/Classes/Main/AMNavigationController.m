//
//  AMNavigationController.m
//  娟娟任务管理器
//
//  Created by 李朝 on 16/1/15.
//  Copyright © 2016年 lizhao. All rights reserved.
//

#import "AMNavigationController.h"

@interface AMNavigationController ()

@end

@implementation AMNavigationController

+ (void)load
{
    UINavigationBar *navBar = [UINavigationBar appearanceWhenContainedInInstancesOfClasses:@[[AMNavigationController class]]];
    [navBar setTintColor:[UIColor redColor]];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

#pragma mark - 设置状态栏样式
- (UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}

@end
