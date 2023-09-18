//
//  HTFamilyMemberViewController.h
//  Merriciya
//
//  Created by 昊天 on 2023/5/29.
//

#import "HTBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface HTFamilyMemberViewController : HTBaseViewController

@property (nonatomic, strong) NSMutableArray *var_familyDataArray;
@property (nonatomic, strong) UITableView *var_tableView;
@property (nonatomic, strong) NSString *var_inputText;

@end

NS_ASSUME_NONNULL_END
