//
//  UIFont+AutoSize.h
//  RuiDeWaterHeater
//
//  Created by WsdlDev on 16/3/24.
//  Copyright © 2016年 WsdlDev. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIFont (AutoSize)
//设计字体基于ipone6 plus，ran
+(UIFont*)systemFontBaseOnIpone6PlusWithPointSize:(CGFloat)fontSize;
//
+(UIFont*)systemFontBaseOnNormalIponeWithPointSize:(CGFloat)fontSize;
//
+(UIFont*)systemFontBaseOnIpone6PlusWithPointSize:(CGFloat)fontSize weight:(CGFloat)weight;
//
+(UIFont*)systemFontBaseOnNormalIponeWithPointSize:(CGFloat)fontSize weight:(CGFloat)weight;
//由于ui的字体是基于ipone6plus的，所以要针对当前的实际机型做调整
-(UIFont*)systemFontBaseOnIpone6Plus;
//由于ui的字体是基于非ipone6plus的，所以要针对当前的实际机型做调整
-(UIFont*)systemFontBaseOnNormalIPone;

@end
