//
//  HTFamilyMemberViewControllerManager.h
//  Axcolly
//
//  Created by dn on 2023/7/3.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface HTFamilyMemberViewControllerManager : NSObject

+ (void)ht_showHowAddMember:(UIView *)view andController:(UIViewController *)controller;

+ (void)ht_shareMemberThisApp:(NSString *)title andMsg:(NSString *)message andView:(UIView *)view andController:(UIViewController *)controller;

@end

NS_ASSUME_NONNULL_END
