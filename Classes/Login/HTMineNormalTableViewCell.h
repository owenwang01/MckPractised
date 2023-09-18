//
//  HTMineNormalTableViewCell.h
// 
//
//  Created by Apple on 2023/2/23.
//  Copyright © 2023 Apple. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@class HTMineMenuDataModel;
@interface HTMineNormalTableViewCell : UITableViewCell

- (void)ht_updateCellWithData:(HTMineMenuDataModel *)data;

@end

NS_ASSUME_NONNULL_END
