//
//  AMConstent.m
//  娟娟任务管理器
//
//  Created by 李朝 on 16/1/13.
//  Copyright © 2016年 lizhao. All rights reserved.
//

#import <UIKit/UIKit.h>


/** 默认动画时间 */
CGFloat const AMAnimationDefaultTime = 0.25;

/***********************************     taskViewController    ***************************************/
/** taskTableView 的宽度 */
CGFloat const AMTaskTableViewWidth = 109;
/** taskView 中的 taskTableViewCell 的标识符 */
NSString * const AMTaskTableViewCellID = @"AMTaskTableViewCell";
/** taskView 中的 taskTopView 的高度 */
CGFloat const AMTaskTopViewHeight = 64;

/***********************************    控制抽屉效果参数    ***************************************/
/** 抽屉效果 taskView 最终宽度占总宽度的比例 */
CGFloat const AMTaskViewFinalWidthScale = 0.2;
/** 抽屉效果 taskView 的最终 Y 值 */
CGFloat const AMTaskViewFinalY = 200;
/** 允许拖拽的部分占总宽度的百分比 */
CGFloat const AMTaskViewOriginalPanScale = 0.3;
/** 将页面拖拽过多少松手后 不会复位 */
CGFloat const AMTaskViewFinalScaleWithoutReset = 0.4;
