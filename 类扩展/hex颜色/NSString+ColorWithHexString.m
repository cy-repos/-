//
//  NSString+ColorWithHexString.m
//  BananaPro
//
//  Created by WsdlDev on 17/4/1.
//  Copyright © 2017年 jcYang. All rights reserved.
//

#import "NSString+ColorWithHexString.h"

@implementation NSString (ColorWithHexString)

-(UIColor*)colorInRGBHex{
    NSString *str =[@"0x" stringByAppendingString:self];
    long long hex =strtoul([str UTF8String], 0, 16);
    CGFloat red =(float)((hex&0xff0000)>>16)/255.0;
    CGFloat green =(float)((hex&0xff00)>>8)/255.0;
    CGFloat blue =(float)(hex&0xff)/255.0;
    return [UIColor colorWithRed:red green:green blue:blue alpha:1.0];
}

@end
