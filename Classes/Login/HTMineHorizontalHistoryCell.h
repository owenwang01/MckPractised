//
//  HTMineHorizontalHistoryCell.h
// 
//
//  Created by Apple on 2022/11/16.
//  Copyright © 2022 Apple. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class HTHistoryData;

typedef void(^BLOCK_HTHorizationalSelectedBlock)(HTHistoryData *var_dataModel);

@interface HTMineHorizontalHistoryCell : UITableViewCell

- (void)ht_updateCellWithData:(NSArray *)dataArray andSelectedBlock:(BLOCK_HTHorizationalSelectedBlock)selectedBlock;

@end

NS_ASSUME_NONNULL_END
