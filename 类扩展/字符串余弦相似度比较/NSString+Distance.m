//
//  NSString+Distance.m
//  BananaPro
//
//  Created by WsdlDev on 17/3/27.
//  Copyright © 2017年 jcYang. All rights reserved.
//

#import "NSString+Distance.h"

@implementation NSString (Distance)

//以下使用余弦相似度算法匹配字符串的相似度
- (float) likePercent:(NSString *)target{
    //1.分词，单字分词
    NSMutableDictionary *words =[NSMutableDictionary dictionaryWithCapacity:1];
    //1.1 分词本身
    for (NSInteger i =0; i<self.length; i++) {
        NSString *word =[self substringWithRange:NSMakeRange(i, 1)];
        NSMutableArray *nums =[words objectForKey:word];
        if (!nums) {
            nums =[NSMutableArray arrayWithObjects:@(1),@(0),nil];
            [words setObject:nums forKey:word];
            continue;
        }else{
            nums[0] =@([nums[0] longLongValue]+1);
        }
    }
    //1.2 分词target
    for (NSInteger i =0; i<target.length; i++) {
        NSString *word =[target substringWithRange:NSMakeRange(i, 1)];
        NSMutableArray *nums =[words objectForKey:word];
        if (!nums) {
            nums =[NSMutableArray arrayWithObjects:@(0),@(1),nil];
            [words setObject:nums forKey:word];
            continue;
        }else{
            nums[1] =@([nums[1] longLongValue]+1);
        }
    }
    //2 计算距离
    NSArray *keywords =[words allKeys];
    __block CGFloat dis1 =0,dis2 =0,dis3 =0;
    [keywords enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        NSArray *nums =words[obj];
        dis1 +=([nums[0] longLongValue]*[nums[1] longLongValue]);
        dis2 +=pow([nums[0] longLongValue], 2.0);
        dis3 +=pow([nums[1] longLongValue], 2.0);
    }];
    dis2 =sqrt((double)dis2);
    dis3 =sqrt((double)dis3);
    CGFloat dis =dis1/(dis2*dis3);
    
    return dis;
}

@end
