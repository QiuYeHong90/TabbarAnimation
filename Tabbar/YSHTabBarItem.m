//
//  YSHTabBarItem.m
//  Tabbar
//
//  Created by 赵 on 2018/3/2.
//  Copyright © 2018年 袁书辉. All rights reserved.
//


#import "YSHTabBarItem.h"
#import <UIColor+BinAdd.h>


@implementation YSHTabBarItem



- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        [self initUI];
    }
    return self;
}

-(void)initUI
{
    
    NSString * sstt = @"#d4b27e";
    if (self.tag==3) {
        sstt = @"#d4b27e";
    }else{
        sstt = @"#23d41e";
    }
    
    self.selectedImage = [self.selectedImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    self.image = [self.image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];

    
    [self setTitleTextAttributes:@{NSForegroundColorAttributeName:  [UIColor colorWithHexString:sstt]} forState:UIControlStateSelected];
    [self setTitleTextAttributes:@{NSForegroundColorAttributeName:  [UIColor colorWithWholeRed:52 green:0 blue:0]} forState:UIControlStateNormal];
}


@end
