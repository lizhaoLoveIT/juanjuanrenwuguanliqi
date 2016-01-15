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

@end

@implementation AMMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // 设置基本配置
    self.noLeftPan = YES;
    
    // 隐藏导航栏
    [self.navigationController.navigationBar setHidden:YES];
    
    // 添加子控制器
    [self addChildViewControllers];
    
}



#pragma mark - 添加子控制器
#pragma mark -


/**
 * 添加子控制器
 */
- (void)addChildViewControllers
{
    AMTaskViewController *taskVc = [[AMTaskViewController alloc] init];
    [self addChildViewController:taskVc];
    [self.mainView addSubview:taskVc.view];
    // 设置约束
    [self setLayoutTaskView:taskVc.view];
    
    AMMyAccountViewController *myAccountVc = [[AMMyAccountViewController alloc] init];
    [self addChildViewController:myAccountVc];
    [self.leftView addSubview:myAccountVc.view];
    // 设置约束
    [self setLayoutMyAccountView:myAccountVc.view];
    
}

#pragma mark - 布局子控件
#pragma mark -

/**
 * 布局 taskView
 */
- (void)setLayoutTaskView:(UIView *)taskView
{
    [taskView makeConstraints:^(MASConstraintMaker *make) {
        make.top.bottom.left.right.equalTo(self.mainView);
    }];
}

/**
 * 布局 myAccountView
 */
- (void)setLayoutMyAccountView:(UIView *)myAccountView
{
    [myAccountView makeConstraints:^(MASConstraintMaker *make) {
        make.top.bottom.left.right.equalTo(self.leftView);
    }];
}











@end
