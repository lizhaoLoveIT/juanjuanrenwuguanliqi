//
//  UIView+AMExtension.m
//  百思不得姐
//
//  Created by Ammar on 15/8/7.
//  Copyright (c) 2015年 小码哥. All rights reserved.
//

#import "UIView+AMExtension.h"

@implementation UIView (AMExtension)
#pragma mark - viewX
- (CGFloat)viewX
{
    return self.frame.origin.x;
}

- (void)setViewX:(CGFloat)x
{
    CGRect rect = self.frame;
    rect.origin.x = x;
    self.frame = rect;
}

#pragma mark - viewY
- (CGFloat)viewY
{
    return self.frame.origin.y;
}

- (void)setViewY:(CGFloat)y
{
    CGRect rect = self.frame;
    rect.origin.y = y;
    self.frame = rect;
}

#pragma mark - width
- (CGFloat)viewWidth
{
    return self.frame.size.width;
}

- (void)setViewWidth:(CGFloat)width
{
    CGRect rect = self.frame;
    rect.size.width = width;
    self.frame = rect;
}


#pragma mark - height
- (CGFloat)viewHeight
{
    return self.frame.size.height;
}

- (void)setViewHeight:(CGFloat)height
{
    CGRect rect = self.frame;
    rect.size.height = height;
    self.frame = rect;
}

#pragma mark - size
- (CGSize)size
{
    return self.frame.size;
}

- (void)setSize:(CGSize)size
{
    CGRect rect = self.frame;
    rect.size = size;
    self.frame = rect;
}

#pragma mark - centerX
- (CGFloat)centerX
{
    return self.center.x;
}

- (void)setCenterX:(CGFloat)centerX
{
    CGPoint point = self.center;
    point.x = centerX;
    self.center = point;
}

#pragma mark - centerY
- (CGFloat)centerY
{
    return self.center.y;
}

- (void)setCenterY:(CGFloat)centerY
{
    CGPoint point = self.center;
    point.y = centerY;
    self.center = point;
}


- (BOOL)isShowingAtKeyWindow
{
    UIWindow *keyWindow = [UIApplication sharedApplication].keyWindow;
    
    // 从self.supserview将view的frame参考系转换到keyWindow上
    CGRect newFrame = [keyWindow convertRect:self.frame fromView:self.superview];
    BOOL intersects = CGRectIntersectsRect(newFrame, keyWindow.bounds);
    // 1.没有隐藏，2.不透明，3.是窗口的子控件，4.跟主窗口有交集
    return !self.isHidden && self.alpha > 0.01 && self.window == keyWindow && intersects;
}

+ (instancetype)loadNibFromXib
{
    return [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass(self) owner:nil options:nil] lastObject];
}

/** Finds the view's view controller. */
- (UIViewController *)viewController
{
    UIResponder *responder = self;
    while ((responder = [responder nextResponder]))
        if ([responder isKindOfClass: [UIViewController class]])
            return (UIViewController *)responder;
    
    // If the view controller isn't found, return nil.
    return nil;
}

@end
