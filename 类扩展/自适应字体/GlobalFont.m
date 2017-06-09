//
//  GlobalFont.m
//  BananaPro
//
//  Created by WsdlDev on 17/2/23.
//  Copyright © 2017年 jcYang. All rights reserved.
//

#import "GlobalFont.h"



// 这里设置iPhone6放大的字号数（现在是减少2号，也就是iPhone4s和iPhone5上字体为15时，iPhone6上字号为17）
#define IPHONE6_INCREMENT -1

// 这里设置iPhone6Plus放大的字号数（现在是放大3号，也就是iPhone4s和iPhone5上字体为15时，iPhone6上字号为18）
#define IPHONE6PLUS_INCREMENT 3

@implementation GlobalFont

+(UIFont*)adapterFont:(CGFloat)size{
    UIFont *font =[UIFont systemFontOfSize:size];
    return [GlobalFont adjustFont:font];
}
+(UIFont*)adapterFont:(CGFloat)size withWeight:(CGFloat)weight{
    UIFont *font =[UIFont systemFontOfSize:size weight:weight];
    return [GlobalFont adjustFont:font];
}

+(UIFont *)adjustFont:(UIFont *)font{
    UIFont *newFont=nil;
    if (IS_LessThanIPHONE_6){
        newFont = [UIFont fontWithName:font.fontName size:font.pointSize+IPHONE6_INCREMENT];
    }else if (IS_MoreThan_IPHONE_6_PLUS){
        newFont = [UIFont fontWithName:font.fontName size:font.pointSize+IPHONE6PLUS_INCREMENT];
    }else{
        newFont = font;
    }
    return newFont;
}


@end
