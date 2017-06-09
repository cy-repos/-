//
//  NSString+Barcode.h
//  BananaPro
//
//  Created by WsdlDev on 17/3/28.
//  Copyright © 2017年 jcYang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Barcode)

- (UIImage *)encodeQRImageWithSize:(CGSize)size ;

@end
