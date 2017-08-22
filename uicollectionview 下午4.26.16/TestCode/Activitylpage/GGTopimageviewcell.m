
//
//  GGTopimageviewcell.m
//  Gugu
//
//  Created by Mr.Zhao on 2017/8/11.
//  Copyright © 2017年 杭州异人异想网络科技有限公司. All rights reserved.
//

#import "GGTopimageviewcell.h"
#import "UIImageView+WebCache.h"

#define GetWidth(gw) ([UIScreen mainScreen].bounds.size.width >= 375 ? ([UIScreen mainScreen].bounds.size.width > 375 ? (gw/750.0) * 390: (gw/750.0) *375): (gw/750.0) * 320)
@implementation GGTopimageviewcell

- (id)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
       [self cretateUi];
    }
    return self;
}

- (void)cretateUi{
    [self.contentView addSubview:self.backimage];
    
    
}
- (UIImageView *)backimage{
    if (!_backimage) {
        _backimage = [[UIImageView alloc] initWithFrame:CGRectMake(-GetWidth(35), 0, self.bounds.size.width + GetWidth(70), GetWidth(200))];
        [self  addSubview:_backimage];
    }
    return _backimage;
}
- (void)setUi:(NSString *)str{
    [_backimage sd_setImageWithURL:[NSURL URLWithString:str] placeholderImage:nil];  
}
@end
