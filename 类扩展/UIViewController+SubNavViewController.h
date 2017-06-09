//
//  UIViewController+SubNavViewController.h
//  RuiDeWaterHeater
//
//  Created by WsdlDev on 16/3/28.
//  Copyright © 2016年 WsdlDev. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JCY_Global.h"

@interface UIViewController (SubNavViewController)
//避免导航条遮盖
-(void)avoidCoverMainView;
//设置导航条的‘返回’按钮的标题
-(void)setBackText:(NSString*)str;
//设置导航页标题
-(void)setNavTitle:(NSString*)str;
//设置导航条的背景
-(void)setBarBackgroundImage:(id)imageOrolor;
@end
