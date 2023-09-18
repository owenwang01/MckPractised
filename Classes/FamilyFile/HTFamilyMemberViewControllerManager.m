//
//  HTFamilyMemberViewControllerManager.m
//  Axcolly
//
//  Created by dn on 2023/7/3.
//

#import "HTFamilyMemberViewControllerManager.h"
#import "ZQFamilyManager.h"

@implementation HTFamilyMemberViewControllerManager


+ (void)ht_showHowAddMember:(UIView *)view andController:(UIViewController *)controller{
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:[ZQFamilyManager lgjeropj_familyText][AsciiString(@"title")] message:[ZQFamilyManager lgjeropj_familyText][AsciiString(@"msg")] preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:LocalString(@"OK", nil) style:UIAlertActionStyleDefault handler:nil];
    [alertController addAction:cancelAction];
    
    UIPopoverPresentationController *popover = alertController.popoverPresentationController;
    if (popover){
        popover.sourceView = view;
        popover.sourceRect = CGRectMake(SCREEN_WIDTH *0.5 - 100, SCREEN_HEIGHT, 200, 250);
        popover.permittedArrowDirections = UIPopoverArrowDirectionDown;
    }
    [controller presentViewController:alertController animated:YES completion:nil];
}

+ (void)ht_shareMemberThisApp:(NSString *)title andMsg:(NSString *)message andView:(UIView *)view andController:(UIViewController *)controller
{
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:LocalString(@"Share the app with my family", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        dispatch_async(dispatch_get_main_queue(), ^{
            // 调首页的分享app
            [[NSNotificationCenter defaultCenter] postNotificationName:@"NTFCTString_shareApp" object:nil];
        });
    }];
    [alertController addAction:okAction];
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:LocalString(@"Cancel", nil) style:UIAlertActionStyleDefault handler:nil];
    [alertController addAction:cancelAction];
    
    UIPopoverPresentationController *popover = alertController.popoverPresentationController;
    if (popover){
        popover.sourceView = view;
        popover.sourceRect = CGRectMake(SCREEN_WIDTH *0.5 - 100, SCREEN_HEIGHT, 200, 250);
        popover.permittedArrowDirections = UIPopoverArrowDirectionDown;
    }
    [controller presentViewController:alertController animated:YES completion:nil];
}

@end
