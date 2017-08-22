//
//  GuButton.h
//  Gugu
//
//  Created by Mr.Zhao on 2017/8/2.
//  Copyright © 2017年 杭州异人异想网络科技有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GuButton : UIButton
+ (instancetype)initWithFrame:(CGRect)frame andTitle:(NSString *)title andFont:(UIFont *)font andSelect:(SEL)select andTagert:(id) tagert andCornerRadius:(CGFloat)corner;
@end
