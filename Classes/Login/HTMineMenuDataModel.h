//
//  HTMineMenuDataModel.h
// 
//
//  Created by Apple on 2023/2/24.
//  Copyright © 2023 Apple. All rights reserved.
//

#import "FLBaseModel.h"

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSUInteger, ENUM_MineViewCellType){
    ENUM_MineViewCellTypeNormal = 0, //正常菜单cell
    ENUM_MineViewCellTypeHistory,    //历史记录cell
};

typedef NS_ENUM(NSUInteger, ENUM_MineViewMenuType) {
    ENUM_MineViewMenuTypeHistory = 0, //历史
    ENUM_MineViewMenuTypeWatchLater,  //
    ENUM_MineViewMenuTypeShare,       //推荐给朋友
    ENUM_MineViewMenuTypeFeedBack,    //反馈
    ENUM_MineViewMenuTypeLogout       //退出登录
};

@interface HTMineMenuDataModel : FLBaseModel

@property (nonatomic, copy) NSString *title;
@property (nonatomic, strong) NSURL *icon;
@property (nonatomic, assign) ENUM_MineViewCellType cellType;
@property (nonatomic, assign) ENUM_MineViewMenuType var_menuType;

+ (NSMutableArray *)mineViewMenuData;

@end

NS_ASSUME_NONNULL_END
