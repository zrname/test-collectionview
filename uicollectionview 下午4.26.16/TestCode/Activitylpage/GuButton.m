//
//  GuButton.m
//  Gugu
//
//  Created by Mr.Zhao on 2017/8/2.
//  Copyright © 2017年 杭州异人异想网络科技有限公司. All rights reserved.
//

#import "GuButton.h"

@implementation GuButton

+ (instancetype)initWithFrame:(CGRect)frame andTitle:(NSString *)title andFont:(UIFont *)font andSelect:(SEL)select andTagert:(id)tagert andCornerRadius:(CGFloat)corner{
    GuButton *investmentBtn = [GuButton buttonWithType:UIButtonTypeCustom];
    investmentBtn.frame = frame;
    [investmentBtn setTitle:title forState:UIControlStateNormal];
    [investmentBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    investmentBtn.titleLabel.font = font;
    [investmentBtn addTarget:tagert action:select forControlEvents:UIControlEventTouchUpInside];
    investmentBtn.backgroundColor = [UIColor whiteColor];
    investmentBtn.layer.cornerRadius = corner;
    investmentBtn.layer.masksToBounds = YES;
    return investmentBtn;
    
}

@end
