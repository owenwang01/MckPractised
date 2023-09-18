//
//  ZQFamilyManagerThree.m
//  Axcolly
//
//  Created by dn on 2023/6/30.
//

#import "ZQFamilyManagerThree.h"

@implementation ZQFamilyManagerThree

+ (NSArray *)lgjeropj_questionViewTitleArray:(NSInteger)var_total
{
    NSString *var_stringOne = LocalString(@"What is a family package?", nil);
    NSString *var_stringTwo = [NSString stringWithFormat:LocalString(@"The family plan packs up to %ld independent accounts into one payment, and the accounts are completely independent.\nThe main family account can invite other members at any time, and members can log out at any time.", nil), var_total];
    NSString *var_stringThree = LocalString(@"Upgrade to family package?", nil);
    NSString *var_stringFour = LocalString(@"If you have already purchased a single plan, you can upgrade to a family plan at any time.\nThe family plan needs to be paid , and the old subscription balance will be refunded to you in proportion.", nil);
    
    NSMutableArray *dataArray = [NSMutableArray array];
    [dataArray addObject:var_stringOne];
    [dataArray addObject:var_stringTwo];
    [dataArray addObject:var_stringThree];
    [dataArray addObject:var_stringFour];
    return dataArray.copy;
}

@end
