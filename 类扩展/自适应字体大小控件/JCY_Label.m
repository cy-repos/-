//
//  JCY_Label.m
//  BananaPro
//
//  Created by WsdlDev on 17/2/23.
//  Copyright © 2017年 jcYang. All rights reserved.
//

#import "JCY_Label.h"

@implementation JCY_Label

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(id)init{
    self =[super init];
    if (self) {
        [self setup];
    }
    return self;
}

-(id)initWithCoder:(NSCoder *)aDecoder{
    self =[super initWithCoder:aDecoder];
    if (self) {
        [self setup];
    }
    return self;
}

-(id)initWithFrame:(CGRect)frame{
    self =[super initWithFrame:frame];
    if (self) {
        [self setup];
    }
    return self;
}

-(void)setup{
    self.adjustsFontSizeToFitWidth =YES;
}

-(void)setFont:(UIFont *)font{
    [super setFont:[GlobalFont adjustFont:font]];
}

@end
