//
//  UIImage+TintColor.h
//  RuiDeWaterHeater
//
//  Created by WsdlDev on 16/3/11.
//  Copyright © 2016年 WsdlDev. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (TintColor)
//自适应图片
+(UIImage*)imageWithFileNameAutoScale:(NSString*)fileName;
//以下函数是通过修改image的前景色来更新图像
- (UIImage *) imageWithTintColor:(UIColor *)tintColor;
- (UIImage *) imageWithGradientTintColor:(UIColor *)tintColor;
- (UIImage *) imageWithTintColor:(UIColor *)tintColor blendMode:(CGBlendMode)blendMode;
@end
