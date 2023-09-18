//
//  ZQFamilyViewControllerManager.h
//  Axcolly
//
//  Created by dn on 2023/6/30.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ZQFamilyViewControllerManager : NSObject

+ (BOOL)ht_judgeUserIsMaster:(NSMutableArray *)var_familyDataArray;
+ (void)lgjeropj_commomAttr:(UILabel *)label andString:(NSString *)string;
+ (void)ht_dissolveFamilyGroupAction:(void(^)(bool code))block andView:(UIView *)view andController:(UIViewController *)controller;
+ (void)lgjeropj_deleteFamilyAction:(UIViewController *)viewcontroller;

@end

NS_ASSUME_NONNULL_END
