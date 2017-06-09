//
//  UIViewController+SubNavViewController.m
//  RuiDeWaterHeater
//
//  Created by WsdlDev on 16/3/28.
//  Copyright © 2016年 WsdlDev. All rights reserved.
//

#import "UIViewController+SubNavViewController.h"

@implementation UIViewController (SubNavViewController)
//
-(void)avoidCoverMainView{
    float ver =[[[UIDevice currentDevice] systemVersion] floatValue];
    if(ver>=7.0)
    {
        self.edgesForExtendedLayout =UIRectEdgeNone;
        self.automaticallyAdjustsScrollViewInsets = NO;
    }
}
//设置导航条的‘返回’按钮的标题
-(void)setBackText:(NSString*)str{
    //设置“返回”item的文字
    UIBarButtonItem *backItem =[[UIBarButtonItem alloc] init];
    backItem.title =str;
    self.navigationItem.backBarButtonItem =backItem;
}
//设置导航页标题
-(void)setNavTitle:(NSString*)str{
    self.navigationItem.title =str;
}
/**
 *  设置导航条的背景
 *
 *  @param imageOrolor image对象或color对象
 */
-(void)setBarBackgroundImage:(id)imageOrolor{
    UIImage *backImage =nil;
    //
    if ([imageOrolor isKindOfClass:[UIImage class]]) {
        backImage =imageOrolor;
    }
    //
    if ([imageOrolor isKindOfClass:[UIColor class]]) {
        backImage =[JCY_Global createImageWithColor:imageOrolor];
    }
    //
    if (!backImage) {
        return;
    }
    [self.navigationController.navigationBar setBackgroundImage:backImage forBarMetrics:UIBarMetricsDefault];
}
@end
