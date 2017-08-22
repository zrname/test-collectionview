//
//  GGTopimageviewcell.h
//  Gugu
//
//  Created by Mr.Zhao on 2017/8/11.
//  Copyright © 2017年 杭州异人异想网络科技有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>
@class GGActivitymodel;

@interface GGTopimageviewcell : UICollectionViewCell
@property(nonatomic,strong)UIImageView *backimage;
- (void)setUi:(NSString *)str;
@end
