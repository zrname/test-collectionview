//
//  GGActivyDetailcell.m
//  Gugu
//
//  Created by Mr.Zhao on 2017/8/11.
//  Copyright © 2017年 杭州异人异想网络科技有限公司. All rights reserved.
//

#import "GGActivyDetailcell.h"
#import "UIImageView+WebCache.h"
@implementation GGActivyDetailcell
- (id)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        [self cretateUi];
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}

- (void)cretateUi{
     [self.contentView addSubview:self.LOwvc];
     [self.LOwvc addSubview:self.backvc];
     [self.LOwvc addSubview:self.backimage];
    
}
- (void)setUi:(NSString *)str{
    [_backimage sd_setImageWithURL:[NSURL URLWithString:str] placeholderImage:nil];


}

@end
