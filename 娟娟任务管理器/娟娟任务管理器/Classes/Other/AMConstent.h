//
//  AMConstent.h
//  娟娟任务管理器
//
//  Created by 李朝 on 16/1/13.
//  Copyright © 2016年 lizhao. All rights reserved.
//

#import <UIKit/UIKit.h>


/** 默认动画时间 */
UIKIT_EXTERN CGFloat const AMAnimationDefaultTime;

/***********************************     taskViewController    ***************************************/
/** taskView 中的 taskTableView 的宽度 */
UIKIT_EXTERN CGFloat const AMTaskTableViewWidth;
/** taskView 中的 taskTableViewCell 的标识符 */
UIKIT_EXTERN  NSString * const AMTaskTableViewCellID;
/** taskView 中的 taskTopView 的高度 */
UIKIT_EXTERN CGFloat const AMTaskTopViewHeight;

/***********************************    控制抽屉效果参数    ***************************************/
/** 抽屉效果 taskView 最终宽度占总宽度的比例 */
UIKIT_EXTERN CGFloat const AMTaskViewFinalWidthScale;
/** 抽屉效果 taskView 的最终 Y 值 */
UIKIT_EXTERN CGFloat const AMTaskViewFinalY;
/** 允许拖拽的部分占总宽度的百分比 */
UIKIT_EXTERN CGFloat const AMTaskViewOriginalPanScale;
/** 将页面拖拽过多少松手后 不会复位 */
UIKIT_EXTERN CGFloat const AMTaskViewFinalScaleWithoutReset;


















