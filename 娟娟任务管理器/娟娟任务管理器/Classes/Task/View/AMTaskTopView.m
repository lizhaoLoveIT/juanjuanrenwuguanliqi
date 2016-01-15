//
//  AMTaskTopView.m
//  娟娟任务管理器
//
//  Created by 李朝 on 16/1/15.
//  Copyright © 2016年 lizhao. All rights reserved.
//

#import "AMTaskTopView.h"

@implementation AMTaskTopView

+ (instancetype)viewFromXib
{
    return [AMTaskTopView loadNibFromXib];
}

- (void)awakeFromNib
{
    self.backgroundColor = AMTaskTopViewBG;
}

@end
