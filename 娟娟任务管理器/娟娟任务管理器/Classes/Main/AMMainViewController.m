//
//  AMMainViewController.m
//  娟娟任务管理器
//
//  Created by 李朝 on 16/1/14.
//  Copyright © 2016年 lizhao. All rights reserved.
//

#import "AMMainViewController.h"
#import "AMTaskViewController.h"
#import "AMMyAccountViewController.h"

@interface AMMainViewController ()<UIGestureRecognizerDelegate>

/** 正在显示的界面的控制器 */
@property (weak, nonatomic) UIViewController *showingVc;

@end

@implementation AMMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 添加子控制器
    [self addChildViewControllers];
    
    // 展示 taskView
    [self showTaskView];
    
}

#pragma mark - 添加子控制器

/**
 * 添加子控制器
 */
- (void)addChildViewControllers
{
    AMTaskViewController *taskVc = [[AMTaskViewController alloc] init];
    self.showingVc = taskVc;
    [self addChildViewController:taskVc];
    
    AMMyAccountViewController *myAccountVc = [[AMMyAccountViewController alloc] init];
    [self addChildViewController:myAccountVc];
    
}

#pragma mark - 展示 task 界面
- (void)showTaskView
{
    [self.view addSubview:self.showingVc.view];
    self.showingVc.view.frame = self.view.bounds;
}




@end
