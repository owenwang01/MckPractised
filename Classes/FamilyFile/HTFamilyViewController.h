//
//  HTFamilyViewController.h
//  Merriciya
//
//  Created by 昊天 on 2023/5/29.
//

#import "HTBaseViewController.h"
#import "HTFamilyTableViewCell.h"
#import "HTFamilyMemberViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface HTFamilyViewController : HTBaseViewController

@property (nonatomic, strong) NSMutableArray *var_familyDataArray;
@property (nonatomic, strong) UITableView *var_tableView;


@end

NS_ASSUME_NONNULL_END
