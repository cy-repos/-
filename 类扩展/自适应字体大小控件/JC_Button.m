//
//  JC_Button.m
//  BananaPro
//
//  Created by WsdlDev on 17/2/28.
//  Copyright © 2017年 jcYang. All rights reserved.
//

#import "JC_Button.h"

@interface JC_Button (){
    BOOL fontToken;
}

@end

@implementation JC_Button

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(void)setTitle:(NSString *)title forState:(UIControlState)state{
    [super setTitle:title forState:state];
    //
    if (!fontToken) {
        self.titleLabel.font =[GlobalFont adjustFont:self.titleLabel.font];
        fontToken =YES;
        self.titleLabel.adjustsFontSizeToFitWidth =YES;
    }
    
}

@end
