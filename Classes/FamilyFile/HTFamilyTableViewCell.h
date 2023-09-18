//
//  HTFamilyTableViewCell.h
//  Merriciya
//
//  Created by 昊天 on 2023/5/29.
//

#import <UIKit/UIKit.h>
#import "ZQFamilyAccountModel.h"
NS_ASSUME_NONNULL_BEGIN


typedef void(^BLOCK_familyMemberCellClickBlock) (NSInteger index);

@interface HTFamilyTableViewCell : UITableViewCell

@property (nonatomic, copy) BLOCK_familyMemberCellClickBlock var_familyMemberCellClickBlock;

- (void)lgjeropj_updateCellWithData:(ZQFamilyAccountModel*)model andIndex:(NSInteger)index;
@end

NS_ASSUME_NONNULL_END
