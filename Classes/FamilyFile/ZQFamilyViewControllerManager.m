//
//  ZQFamilyViewControllerManager.m
//  Axcolly
//
//  Created by dn on 2023/6/30.
//

#import "ZQFamilyViewControllerManager.h"
#import "ZQFamilyAccountModel.h"
#import "HTNetworkManager.h"

@implementation ZQFamilyViewControllerManager


+ (BOOL)ht_judgeUserIsMaster:(NSMutableArray *)var_familyDataArray {
    BOOL var_master = NO;
    for (ZQFamilyAccountModel *model in var_familyDataArray) {
        if (model.uid.intValue == [HTAccountModel sharedInstance].uid.intValue && model.master.intValue == 1) {
            return YES;
        }
    }
    return var_master;
}


+ (void)lgjeropj_commomAttr:(UILabel *)label andString:(NSString *)string
{
    label.textColor = [UIColor grayColor];
    label.textAlignment = NSTextAlignmentCenter;
    NSMutableAttributedString *var_upgradeAttString = [[NSMutableAttributedString alloc] initWithString:string];
    [var_upgradeAttString addAttribute:NSUnderlineStyleAttributeName value:[NSNumber numberWithInteger:NSUnderlineStyleSingle] range:NSMakeRange(0, var_upgradeAttString.string.length)];
    label.attributedText = var_upgradeAttString;
}


+ (void)ht_dissolveFamilyGroupAction:(void(^)(bool code))block andView:(UIView *)view andController:(UIViewController *)controller {
    UIAlertController *var_alertController = [UIAlertController alertControllerWithTitle:LocalString(@"Are you sure you want to delete this family account?", nil) message:nil preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *var_okAction = [UIAlertAction actionWithTitle:LocalString(@"Delete", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        if(block) {
            block(1);
        }
    }];
    [var_alertController addAction:var_okAction];
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:LocalString(@"Cancel", nil) style:UIAlertActionStyleDefault handler:nil];
    [var_alertController addAction:cancelAction];

    UIPopoverPresentationController *var_popover = var_alertController.popoverPresentationController;
    if (var_popover){
        var_popover.sourceView = view;
        var_popover.sourceRect = CGRectMake(SCREEN_WIDTH *0.5 - 100, SCREEN_HEIGHT, 200, 250);
        var_popover.permittedArrowDirections = UIPopoverArrowDirectionDown;
    }
    [controller presentViewController:var_alertController animated:YES completion:nil];
}

+ (void)lgjeropj_deleteFamilyAction:(UIViewController *)viewcontroller
{
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    [dict setObject:[HTAccountModel sharedInstance].uid forKey:@"uid"];
    [dict setObject:[HTAccountModel sharedInstance].var_fid forKey:AsciiString(@"fid")];
    [ZKBaseTipTool showLoadingTip];
    
    [[HTNetworkManager shareInstance] post:kNetworkFormat(STATIC_kDeleteFamily) param:dict result:^(id result) {
        [ZKBaseTipTool hideAllLoadingTip];
        if ([[result objectForKey:@"status"] integerValue] == 200 ) {
            // 置空用户数据
            [HTAccountModel sharedInstance].var_identity = @"0";
            [HTAccountModel sharedInstance].var_fid = @"0";
            [HTAccountModel sharedInstance].var_familyPlanState = @"0";
            [HTAccountModel ht_accountPersistence];
            //验证
            [HTCommonConfiguration lgjeropj_shared].BLOCK_subscribeVerifyBlock();
            [ZKBaseTipTool showMessage:LocalString(@"You have left the family, you can continue to purchase an individual/family plan", nil)];
            [viewcontroller.navigationController popViewControllerAnimated:YES];
        }
        
    }];
}

@end
