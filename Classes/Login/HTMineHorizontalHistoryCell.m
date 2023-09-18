//
//  HTMineHorizontalHistoryCell.m
// 
//
//  Created by Apple on 2022/11/16.
//  Copyright © 2022 Apple. All rights reserved.
//

#import "HTMineHorizontalHistoryCell.h"
#import "HTMineHistoryCollectionCell.h"
#import "HTHistoryData.h"

static NSString *STATIC_kMineHistoryCellIdentifier = @"CELLString_STATIC_MINEHISTORY_CELL_ID";

@interface HTMineHorizontalHistoryCell ()<UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout>

@property (nonatomic, strong) UICollectionView *collectionV;
@property (nonatomic, strong) NSMutableArray *dataArray;
@property (nonatomic, copy) BLOCK_HTHorizationalSelectedBlock selectedBlock;

@end

@implementation HTMineHorizontalHistoryCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if(self){
        [self ht_addCellSubviews];
    }
    return self;
}

- (void)ht_addCellSubviews{
    self.userInteractionEnabled = YES;
    self.backgroundColor = [UIColor clearColor];
    self.selectionStyle = UITableViewCellSelectionStyleNone;
    // UICollectionView
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    layout.itemSize = kDevice_Is_iPad ? CGSizeMake(HTScaleWidth(0.7, 316), 316) : CGSizeMake(112, 190);
    layout.minimumLineSpacing = 6.0f;
    layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    UICollectionView *collectionView = [[UICollectionView alloc] initWithFrame:CGRectZero collectionViewLayout:layout];
    collectionView.backgroundColor = [UIColor clearColor];
    [collectionView registerClass:[HTMineHistoryCollectionCell class] forCellWithReuseIdentifier:STATIC_kMineHistoryCellIdentifier];
    collectionView.delegate = self;
    collectionView.dataSource = self;
    collectionView.showsHorizontalScrollIndicator = NO;
    [self.contentView addSubview:collectionView];
    self.collectionV = collectionView;
    [collectionView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(UIEdgeInsetsMake(0, 0, 0, 0));
    }];
}

#pragma mark - 数据绑定
- (void)ht_updateCellWithData:(NSArray *)dataArray andSelectedBlock:(BLOCK_HTHorizationalSelectedBlock)selectedBlock{
    self.selectedBlock = selectedBlock;
    [self.dataArray removeAllObjects];
    [self.dataArray addObjectsFromArray:dataArray];
    [self.collectionV reloadData];
    if(dataArray.count > 0){
        [self.collectionV scrollToItemAtIndexPath:[NSIndexPath indexPathForItem:0 inSection:0]
                                    atScrollPosition:UICollectionViewScrollPositionTop
                                            animated:YES];
    }
}

#pragma mark -- UICollectionViewDelegate & UICollectionViewDataSource
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.dataArray.count;
}

- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    HTMineHistoryCollectionCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:STATIC_kMineHistoryCellIdentifier forIndexPath:indexPath];
    HTHistoryData *model = self.dataArray[indexPath.row];
    [cell ht_updateCellWithData:model];
    return cell;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    //return CGSizeMake(112, 196);
    return kDevice_Is_iPad ? CGSizeMake(HTScaleWidth(0.7, 316), 316) : CGSizeMake(112, 190);
}

- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section{
    return UIEdgeInsetsMake(0, 10, 0, 0);
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    HTHistoryData *model = self.dataArray[indexPath.row];
    if(self.selectedBlock){
        self.selectedBlock(model);
    }
}

- (NSMutableArray *)dataArray{
    if(!_dataArray){
        _dataArray = @[].mutableCopy;
    }
    return _dataArray;
}

@end
