//
//  NSMutableDictionary+Model.m
//  BananaPro
//
//  Created by WsdlDev on 17/3/28.
//  Copyright © 2017年 jcYang. All rights reserved.
//

#import "NSMutableDictionary+Model.h"

@implementation NSMutableDictionary (Model)

+(NSMutableDictionary*)dictFromModel:(id)model{
    NSMutableDictionary *dict =[NSMutableDictionary dictionaryWithCapacity:1];
    //获取model的所有属性
    unsigned int count =0;
    Ivar *varList =class_copyIvarList([model class], &count);
    for (NSInteger i=0; i<count; i++) {
        //成员
        Ivar var =varList[i];
        //获取成员属性名
        NSString *ivarName =[NSString stringWithUTF8String:ivar_getName(var)];
        ivarName =[ivarName substringFromIndex:1];//去除开头的下划线
        //将值赋值给dict
        id value =[model valueForKey:ivarName];
        if (value) {
            [dict setObject:value forKey:ivarName];
        }
    }
    return dict;
}

+(NSMutableDictionary*)catergoryTypeDictForModel:(id)model{
    NSMutableDictionary *dict =[NSMutableDictionary dictionaryWithCapacity:1];
    //获取model的所有属性
    unsigned int count =0;
    Ivar *varList =class_copyIvarList([model class], &count);
    for (NSInteger i=0; i<count; i++) {
        //成员
        Ivar var =varList[i];
        //获取成员属性名
        NSString *ivarName =[NSString stringWithUTF8String:ivar_getName(var)];
        ivarName =[ivarName substringFromIndex:1];//去除开头的下划线
        //获取成员类型
        NSString *ivarType =[NSString stringWithUTF8String:ivar_getTypeEncoding(var)];
        ivarType = [ivarType stringByReplacingOccurrencesOfString:@"\"" withString:@""];//去除特殊符号
        ivarType = [ivarType stringByReplacingOccurrencesOfString:@"@" withString:@""];//去除特殊符号
        //将值赋值给dict
        [dict setObject:ivarType forKey:ivarName];
    }
    return dict;
}

@end
