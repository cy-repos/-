//
//  NSString+Distance.h
//  BananaPro
//
//  Created by WsdlDev on 17/3/27.
//  Copyright © 2017年 jcYang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Distance)
//字符串相似度比较
- (float) likePercent:(NSString *)target;
@end
