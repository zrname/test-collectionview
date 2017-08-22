//
//  GGActivityLayout.h
//  Gugu
//
//  Created by Mr.Zhao on 2017/8/11.
//  Copyright © 2017年 杭州异人异想网络科技有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GGActivityLayout : UICollectionViewLayout
//cell间距
@property (nonatomic, assign) CGFloat spacing;

//cell的尺寸
@property (nonatomic, assign) CGSize itemSize;

//缩放率
@property (nonatomic, assign) CGFloat scale;

//边距
@property (nonatomic, assign) UIEdgeInsets edgeInset;

//滚动方向
@property (nonatomic, assign) UICollectionViewScrollDirection scrollDirection;


@end
