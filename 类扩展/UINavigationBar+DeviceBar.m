//
//  UINavigationBar+DeviceBar.m
//  RuiDeWaterHeater
//
//  Created by WsdlDev on 16/3/18.
//  Copyright © 2016年 WsdlDev. All rights reserved.
//

#import "UINavigationBar+DeviceBar.h"

#define BottomLineViewTag 100

@implementation UINavigationBar (DeviceBar)

-(void)showBarBottomLine{
    //添加导航条底部的线
    UIImage *image0 =[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"modelBar@2x" ofType:@"png"]];
    CGRect rect =self.bounds;
    UIImageView *barLineView =[[UIImageView alloc] initWithFrame:CGRectMake(0, rect.size.height-30, rect.size.width, 30)];
    barLineView.image =image0;
    barLineView.tag =BottomLineViewTag;
    [self addSubview:barLineView];
}

-(void)hideBarBottomLine{
    UIView *view =[self viewWithTag:BottomLineViewTag];
    if (view) {
        [view removeFromSuperview];
    }
}
@end
