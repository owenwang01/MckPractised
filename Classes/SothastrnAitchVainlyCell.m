







#import "SothastrnAitchVainlyCell.h"
#import "LayttHonourCell.h"
#import "MothballPhotonOutageData.h"

static NSString *rdcProduceText = @"tdyAssociateRateIdentifier";

@interface SothastrnAitchVainlyCell ()<UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout>

@property (nonatomic, strong) UICollectionView *tchRearrangeWarn;
@property (nonatomic, strong) NSMutableArray *simplSnapshotLoss;
@property (nonatomic, copy) hndlReverseKeepBlock mntProductSameBlock;

@end

@implementation SothastrnAitchVainlyCell

- (instancetype)initWithStyle:(UITableViewCellStyle)bootRdrct reuseIdentifier:(NSString *)giveNnunc{
    self = [super initWithStyle:bootRdrct reuseIdentifier:giveNnunc];
    if(self){
        [self typhnSkepticismWrapp];
    }
    return self;
}

- (void)typhnSkepticismWrapp{
    self.userInteractionEnabled = YES;
    self.backgroundColor = [UIColor clearColor];
    self.selectionStyle = UITableViewCellSelectionStyleNone;
    
    UICollectionViewFlowLayout *menuSubjct = [[UICollectionViewFlowLayout alloc] init];
    menuSubjct.itemSize = IRE_COPSE ? CGSizeMake(EUGENICS_SMRK(0.7, 316), 316) : CGSizeMake(112, 190);
    menuSubjct.minimumLineSpacing = 6.0f;
    menuSubjct.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    UICollectionView *cmbnAway = [[UICollectionView alloc] initWithFrame:CGRectZero collectionViewLayout:menuSubjct];
    cmbnAway.backgroundColor = [UIColor clearColor];
    [cmbnAway registerClass:[LayttHonourCell class] forCellWithReuseIdentifier:rdcProduceText];
    cmbnAway.delegate = self;
    cmbnAway.dataSource = self;
    cmbnAway.showsHorizontalScrollIndicator = NO;
    [self.contentView addSubview:cmbnAway];
    self.tchRearrangeWarn = cmbnAway;
    [cmbnAway mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(UIEdgeInsetsMake(0, 0, 0, 0));
    }];
}


- (void)barrelPeriodicSisal:(NSArray *)dclrGive andPrintDependentRoom:(hndlReverseKeepBlock)pushCmprs{
    self.mntProductSameBlock = pushCmprs;
    [self.simplSnapshotLoss removeAllObjects];
    [self.simplSnapshotLoss addObjectsFromArray:dclrGive];
    [self.tchRearrangeWarn reloadData];
    if(dclrGive.count > 0){
        [self.tchRearrangeWarn scrollToItemAtIndexPath:[NSIndexPath indexPathForItem:0 inSection:0]
                                    atScrollPosition:UICollectionViewScrollPositionTop
                                            animated:YES];
    }
}


- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)cmbnAway{
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)cmbnAway numberOfItemsInSection:(NSInteger)rflctShut {
    return self.simplSnapshotLoss.count;
}

- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)cmbnAway cellForItemAtIndexPath:(NSIndexPath *)alsoRbuld {
    LayttHonourCell *leftXclusv = [cmbnAway dequeueReusableCellWithReuseIdentifier:rdcProduceText forIndexPath:alsoRbuld];
    MothballPhotonOutageData *memoPnn = self.simplSnapshotLoss[alsoRbuld.row];
    [leftXclusv barrelPeriodicSisal:memoPnn];
    return leftXclusv;
}

- (CGSize)collectionView:(UICollectionView *)cmbnAway layout:(UICollectionViewLayout *)vrsnGive sizeForItemAtIndexPath:(NSIndexPath *)alsoRbuld{
    
    return IRE_COPSE ? CGSizeMake(EUGENICS_SMRK(0.7, 316), 316) : CGSizeMake(112, 190);
}

- (UIEdgeInsets)collectionView:(UICollectionView *)cmbnAway layout:(UICollectionViewLayout *)vrsnGive insetForSectionAtIndex:(NSInteger)rflctShut{
    return UIEdgeInsetsMake(0, 10, 0, 0);
}

- (void)collectionView:(UICollectionView *)cmbnAway didSelectItemAtIndexPath:(NSIndexPath *)alsoRbuld {
    MothballPhotonOutageData *memoPnn = self.simplSnapshotLoss[alsoRbuld.row];
    if(self.mntProductSameBlock){
        self.mntProductSameBlock(memoPnn);
    }
}

- (NSMutableArray *)simplSnapshotLoss{
    if(!_simplSnapshotLoss){
        _simplSnapshotLoss = @[].mutableCopy;
    }
    return _simplSnapshotLoss;
}

@end