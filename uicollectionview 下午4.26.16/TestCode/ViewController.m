//
//  ViewController.m
//  TestCode
//
//  Created by Mr.Zhao on 2017/8/22.
//  Copyright © 2017年 杭州异人异想网络科技有限公司. All rights reserved.
//

#import "ViewController.h"
#import "GGActivityLayout.h"
#import "GGTopimageviewcell.h"
#import "GGActivyDetailcell.h"
#import "GuButton.h"


#define MainWidth [UIScreen mainScreen].bounds.size.width
#define MainHeight [UIScreen mainScreen].bounds.size.height
#define GetWidth(gw) ([UIScreen mainScreen].bounds.size.width >= 375 ? ([UIScreen mainScreen].bounds.size.width > 375 ? (gw/750.0) * 390: (gw/750.0) *375): (gw/750.0) * 320)
#define FONTSIZE(siz) [UIFont fontWithName:@"Heiti SC" size:([UIScreen mainScreen].bounds.size.width >= 375 ? siz + 1 : siz)]
#define darkText [UIColor colorWithRed:51/255.0 green:51/255.0 blue:51/255.0 alpha:1.0]
@interface ViewController ()<UICollectionViewDataSource, UICollectionViewDelegate>{
    NSIndexPath * _Lastindexpath;
    
}
@property (strong, nonatomic) UICollectionView *topcollectionView;
@property (strong, nonatomic) UICollectionView *LowcollectionView;
@property(nonatomic,strong) GuButton * DetailBtn;

@property(nonatomic,strong)UIImageView * Newimage;
@property(nonatomic,strong)UIImageView * Noticeimage;
@property (nonatomic, strong) NSMutableArray *activityArr;
@end


@implementation ViewController


- (GuButton *)DetailBtn{
    if (!_DetailBtn) {
        _DetailBtn = [GuButton initWithFrame:CGRectMake((MainWidth - GetWidth(200) ) / 2,
                                                        MainHeight - GetWidth(230) - 64, GetWidth(250),  GetWidth(70) ) andTitle:@"查看详情" andFont:FONTSIZE(12)  andSelect:@selector(Detailclick) andTagert:self andCornerRadius:GetWidth(35)];
        [_DetailBtn setTitleColor:darkText forState:UIControlStateNormal];
        
        
    }
    return _DetailBtn;
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self request];
    
}
- (void)request{
     _activityArr = [NSMutableArray array];
    [_activityArr addObject:@"http://7xt9g3.com1.z0.glb.clouddn.com/banner/2016/12/13/c03bf74a-6d45-4287-9fbb-efe06ebfb4af.jpg?e=1481597461&token=C2CantJq-E2s5VSAQqqn_KeCC6wBlNPDrZHeXKT1:xxFHFXoSRImozNBKzSNS77fupHs="];
    [_activityArr addObject:@"http://7xt9g3.com1.z0.glb.clouddn.com/banner/2016/12/13/c03bf74a-6d45-4287-9fbb-efe06ebfb4af.jpg?e=1481597461&token=C2CantJq-E2s5VSAQqqn_KeCC6wBlNPDrZHeXKT1:xxFHFXoSRImozNBKzSNS77fupHs="];
    [_activityArr addObject:@"http://7xt9g3.com1.z0.glb.clouddn.com/banner/2016/12/13/c03bf74a-6d45-4287-9fbb-efe06ebfb4af.jpg?e=1481597461&token=C2CantJq-E2s5VSAQqqn_KeCC6wBlNPDrZHeXKT1:xxFHFXoSRImozNBKzSNS77fupHs="];
    [_activityArr addObject:@"http://7xt9g3.com1.z0.glb.clouddn.com/banner/2016/12/13/c03bf74a-6d45-4287-9fbb-efe06ebfb4af.jpg?e=1481597461&token=C2CantJq-E2s5VSAQqqn_KeCC6wBlNPDrZHeXKT1:xxFHFXoSRImozNBKzSNS77fupHs="];
    [_activityArr addObject:@"http://7xt9g3.com1.z0.glb.clouddn.com/banner/2016/12/13/c03bf74a-6d45-4287-9fbb-efe06ebfb4af.jpg?e=1481597461&token=C2CantJq-E2s5VSAQqqn_KeCC6wBlNPDrZHeXKT1:xxFHFXoSRImozNBKzSNS77fupHs="];
    [_activityArr addObject:@"http://7xt9g3.com1.z0.glb.clouddn.com/banner/2016/12/13/c03bf74a-6d45-4287-9fbb-efe06ebfb4af.jpg?e=1481597461&token=C2CantJq-E2s5VSAQqqn_KeCC6wBlNPDrZHeXKT1:xxFHFXoSRImozNBKzSNS77fupHs="];
    [_activityArr addObject:@"http://7xt9g3.com1.z0.glb.clouddn.com/banner/2016/12/13/c03bf74a-6d45-4287-9fbb-efe06ebfb4af.jpg?e=1481597461&token=C2CantJq-E2s5VSAQqqn_KeCC6wBlNPDrZHeXKT1:xxFHFXoSRImozNBKzSNS77fupHs="];
    [_activityArr addObject:@"http://7xt9g3.com1.z0.glb.clouddn.com/banner/2016/12/13/c03bf74a-6d45-4287-9fbb-efe06ebfb4af.jpg?e=1481597461&token=C2CantJq-E2s5VSAQqqn_KeCC6wBlNPDrZHeXKT1:xxFHFXoSRImozNBKzSNS77fupHs="];
 
    [self.topcollectionView reloadData];
    [self.LowcollectionView reloadData];

}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self CreateUi];
    [self.view addSubview:self.DetailBtn];
}
- (void)CreateUi{
    GGActivityLayout *layout = [GGActivityLayout new];
    layout.scale = 1.2;
    layout.spacing = GetWidth(80);
    layout.itemSize = CGSizeMake(GetWidth(500), GetWidth(350));
    self.LowcollectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(0, GetWidth(280), MainWidth, GetWidth(600)) collectionViewLayout:layout];
    
    self.LowcollectionView.dataSource = self;
    self.LowcollectionView.delegate = self;
    self.LowcollectionView.showsHorizontalScrollIndicator = NO;
    self.LowcollectionView.showsVerticalScrollIndicator = NO;
    self.LowcollectionView.backgroundColor = [UIColor whiteColor];
    [self.LowcollectionView registerClass:[GGActivyDetailcell class] forCellWithReuseIdentifier:@"CellID"];
    [self.view addSubview:self.LowcollectionView];
    
    
   
    
        GGActivityLayout * toplayout = [GGActivityLayout new];
        toplayout.spacing = GetWidth(80);
        toplayout.scale = 1;
        toplayout.edgeInset = UIEdgeInsetsMake(0, 80, 0, 80);
        toplayout.itemSize = CGSizeMake(GetWidth(500) , GetWidth(200));
    
        self.topcollectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(0, 0, MainWidth, GetWidth(200)) collectionViewLayout:toplayout];
        self.topcollectionView.dataSource = self;
        self.topcollectionView.delegate = self;
        self.topcollectionView.showsHorizontalScrollIndicator = NO;
        self.topcollectionView.showsVerticalScrollIndicator = NO;
        self.topcollectionView.backgroundColor = [UIColor whiteColor];
        [self.topcollectionView registerClass:[GGTopimageviewcell class] forCellWithReuseIdentifier:@"CellID"];
        [self.view addSubview:self.topcollectionView];
    
}
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.activityArr.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    if (collectionView == _topcollectionView) {
        GGTopimageviewcell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"CellID" forIndexPath:indexPath];
        cell.backgroundColor = [UIColor colorWithWhite:0.8 alpha:1];
        cell.layer.cornerRadius = 5;
        [cell setUi:self.activityArr[indexPath.row]];
        return cell;
        
    }else{
        
        GGActivyDetailcell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"CellID" forIndexPath:indexPath];
        cell.backgroundColor = [UIColor colorWithWhite:0.8 alpha:1];
        cell.layer.cornerRadius = 5;
        [cell setUi:self.activityArr[indexPath.row]];
        return cell;
        
        
    }
    
    
}
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    
}
- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    
    
    if (scrollView == self.LowcollectionView) {
        
        self.topcollectionView.contentOffset = self.LowcollectionView.contentOffset ;
    }else{
        self.LowcollectionView.contentOffset = self.topcollectionView.contentOffset;
        
    }
    
}


@end
