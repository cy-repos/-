//
//  GlobalFont.h
//  BananaPro
//
//  Created by WsdlDev on 17/2/23.
//  Copyright © 2017年 jcYang. All rights reserved.
//

#import <UIKit/UIKit.h>

#define IS_LessThanIPHONE_6 ([[UIScreen mainScreen] bounds].size.height < 667.0f)
#define IS_MoreThan_IPHONE_6_PLUS ([[UIScreen mainScreen] bounds].size.height >= 736.0f)

@interface GlobalFont : UIFont

+(UIFont*)adapterFont:(CGFloat)size;
+(UIFont*)adapterFont:(CGFloat)size withWeight:(CGFloat)weight;
+(UIFont *)adjustFont:(UIFont *)font;
@end
