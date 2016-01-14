//
//  AMNavController.m
//  娟娟任务管理器
//
//  Created by 李朝 on 16/1/14.
//  Copyright © 2016年 lizhao. All rights reserved.
//

#import "AMNavController.h"

@interface AMNavController ()

@end

@implementation AMNavController

+ (void)load
{
    UINavigationBar *navBar = [UINavigationBar appearanceWhenContainedInInstancesOfClasses:@[[AMNavController class]]];
    
    [navBar setBarTintColor:[UIColor redColor]];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}

@end
