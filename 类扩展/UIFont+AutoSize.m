//
//  UIFont+AutoSize.m
//  RuiDeWaterHeater
//
//  Created by WsdlDev on 16/3/24.
//  Copyright © 2016年 WsdlDev. All rights reserved.
//

#import "UIFont+AutoSize.h"

@implementation UIFont (AutoSize)

+(UIFont*)systemFontBaseOnIpone6PlusWithPointSize:(CGFloat)fontSize{
    if ([UIScreen mainScreen].bounds.size.width!=414) {
        fontSize/=1.5;
    }
    UIFont *font =[UIFont systemFontOfSize:fontSize];
    return font;
}
+(UIFont*)systemFontBaseOnNormalIponeWithPointSize:(CGFloat)fontSize{
    if ([UIScreen mainScreen].bounds.size.width==414) {
        fontSize*=1.5;
    }
    UIFont *font =[UIFont systemFontOfSize:fontSize];
    return font;
}
+(UIFont*)systemFontBaseOnIpone6PlusWithPointSize:(CGFloat)fontSize weight:(CGFloat)weight{
    if ([UIScreen mainScreen].bounds.size.width!=414) {
        fontSize/=1.5;
    }
    UIFont *font =[UIFont systemFontOfSize:fontSize weight:weight];
    return font;
}
+(UIFont*)systemFontBaseOnNormalIponeWithPointSize:(CGFloat)fontSize weight:(CGFloat)weight{
    if ([UIScreen mainScreen].bounds.size.width==414) {
        fontSize*=1.5;
    }
    UIFont *font =[UIFont systemFontOfSize:fontSize weight:weight];
    return font;
}
-(UIFont*)systemFontBaseOnIpone6Plus{
    UIFont *font =nil;
    if ([UIScreen mainScreen].bounds.size.width!=414) {
        NSDictionary *dict =[self.fontDescriptor objectForKey:UIFontDescriptorTraitsAttribute];
        CGFloat weight =[dict[UIFontWeightTrait] floatValue];
        font =[UIFont systemFontOfSize:self.pointSize/1.5 weight:weight];//由于普通ipone的px=2pt，而ipone6plus中px =3pt，所以要想将ipone6plus的字体px对应到其他ipone字体的px，则需要转变，以保持字体在所有ipone中的pt不变
    }else{
        font =self;
    }
    
    return font;
}

//由于ui的字体是基于非ipone6plus的，所以要针对当前的实际机型做调整
-(UIFont*)systemFontBaseOnNormalIPone{
    UIFont *font =nil;
    if ([UIScreen mainScreen].bounds.size.width==414) {
        NSDictionary *dict =[self.fontDescriptor objectForKey:UIFontDescriptorTraitsAttribute];
        CGFloat weight =[dict[UIFontWeightTrait] floatValue];
        font =[UIFont systemFontOfSize:self.pointSize*1.5 weight:weight];//由于普通ipone的px=2pt，而ipone6plus中px =3pt，所以要想将普通ipone的字体px对应到ipone6plus字体的px，则需要转变，以保持字体在所有ipone中的pt不变
    }else{
        font =self;
    }
    return font;
}
@end
