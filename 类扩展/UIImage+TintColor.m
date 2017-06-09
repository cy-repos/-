//
//  UIImage+TintColor.m
//  RuiDeWaterHeater
//
//  Created by WsdlDev on 16/3/11.
//  Copyright © 2016年 WsdlDev. All rights reserved.
//

#import "UIImage+TintColor.h"

@implementation UIImage (TintColor)
+(UIImage*)imageWithFileNameAutoScale:(NSString*)fileName{
    if (!fileName) {
        return nil;
    }
    NSString *newFileName =[NSString stringWithString:fileName];
    //
    CGFloat index =[fileName rangeOfString:@"@"].location;
    if (index!=NSNotFound) {
        newFileName =[fileName substringToIndex:index];
    }
    if (!newFileName||!newFileName.length) {
        return nil;
    }
    //
    UIImage *image =nil;
    NSString *file3x =[NSString stringWithFormat:@"%@@3x",newFileName];
    NSString *file2x =[NSString stringWithFormat:@"%@@2x",newFileName];
    if ([UIScreen mainScreen].bounds.size.width==414) {//ipone6 plus
        image =[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:file3x ofType:@"png"]];//优先考虑3x
        if (!image) {
            image =[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:file2x ofType:@"png"]];//再考虑2x
        }
    }else{//低于ipone6 plus版本的ipone和ipad
        image =[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:file2x ofType:@"png"]];//优先考虑2x
    }
    if (!image) {
        image =[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:fileName ofType:@"png"]];//再考虑原文件
    }
    return image;
}
- (UIImage *) imageWithTintColor:(UIColor *)tintColor
{
    return [self imageWithTintColor:tintColor blendMode:kCGBlendModeDestinationIn];
}

- (UIImage *) imageWithGradientTintColor:(UIColor *)tintColor
{
    return [self imageWithTintColor:tintColor blendMode:kCGBlendModeOverlay];
}

- (UIImage *) imageWithTintColor:(UIColor *)tintColor blendMode:(CGBlendMode)blendMode
{
    //We want to keep alpha, set opaque to NO; Use 0.0f for scale to use the scale factor of the device’s main screen.
    UIGraphicsBeginImageContextWithOptions(self.size, NO, 0.0f);
    [tintColor setFill];
    CGRect bounds = CGRectMake(0, 0, self.size.width, self.size.height);
    UIRectFill(bounds);
    
    //Draw the tinted image in context
    [self drawInRect:bounds blendMode:blendMode alpha:1.0f];
    
    if (blendMode != kCGBlendModeDestinationIn) {
        [self drawInRect:bounds blendMode:kCGBlendModeDestinationIn alpha:1.0f];
    }
    
    UIImage *tintedImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return tintedImage;
}
@end
