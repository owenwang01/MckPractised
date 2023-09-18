//
//  HTMineMenuDataModel.m
// 
//
//  Created by Apple on 2023/2/24.
//  Copyright © 2023 Apple. All rights reserved.
//

#import "HTMineMenuDataModel.h"

@implementation HTMineMenuDataModel

+ (NSMutableArray *)mineViewMenuData{
    NSMutableArray *result = @[].mutableCopy;
    NSArray *titleArray = @[LocalString(@"History", nil), AsciiString(@"Watch Later"), AsciiString(@"Friend Referral Rewards"), AsciiString(@"Feedback")];
    NSArray *iconArray = @[kImageNumber(101), kImageNumber(196), kImageNumber(105), kImageNumber(100)];
    for (int i = 0; i < titleArray.count; i++) {
        HTMineMenuDataModel *item = [[HTMineMenuDataModel alloc] init];
        item.icon = iconArray[i];
        item.title = titleArray[i];
        item.cellType = ENUM_MineViewCellTypeNormal;
        item.var_menuType = i;
        [result addObject:item];
    }
    return result;
}

@end
