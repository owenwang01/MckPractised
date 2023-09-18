//
//  HTMineHistoryCollectionCell.h
// 
//
//  Created by Apple on 2022/11/14.
//  Copyright © 2022 Apple. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@class HTHistoryData;
@interface HTMineHistoryCollectionCell : UICollectionViewCell

- (void)ht_updateCellWithData:(HTHistoryData *)var_dataModel;

@end

NS_ASSUME_NONNULL_END
