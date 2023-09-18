//
//  ZQFamilyManagerTwo.m
//  Axcolly
//
//  Created by dn on 2023/6/30.
//

#import "ZQFamilyManagerTwo.h"

@implementation ZQFamilyManagerTwo

+ (void)lgjeropj_showUpdataResult:(NSDictionary *)dict andText:(NSString *)text andBlock:(void(^)(bool code, NSString *title, NSString *msg))block
{
    if([dict isKindOfClass:[NSDictionary class]] && dict.count > 0) {
        
    } else
    {
        return;
    }
    NSInteger var_status = [[dict objectForKey:@"status"] integerValue];
    switch (var_status) {
        case 200:
        {
            NSInteger remain = [dict[AsciiString(@"remain")] integerValue];
            if (remain == 0) {
                [self lgjeropj_showMsg:LocalString(@"Family members reached the upper limit", nil)];
            } else {
                [self lgjeropj_showMsg:LocalString(@"Added successfully", nil)];
            }
            break;
        }
        case 300:
        {
            [self lgjeropj_showMsg:LocalString(@"The account does not exist", nil)];
            break;
        }
        case 301:
        {
            [self lgjeropj_showMsg:LocalString(@"The user already exists", nil)];
            break;
        }
            
        case 302:
        {
            [self lgjeropj_showMsg:LocalString(@"The user has already joined another family plan", nil)];
            break;
        }
        case (300+4):
        {
            NSString *var_msgStr = [self lgjeropj_msgString:text andDict:dict];
            [ZKBaseTipTool hideAllLoadingTip];
            
            if(block) {
                block(1,[self lgjeropj_titleString], var_msgStr);
            }
            break;
        }
        default:
        {
            [self lgjeropj_showMsg:[dict objectForKey:@"msg"]];
            break;
        }
    }
}

+ (void)lgjeropj_showMsg:(NSString *)msg
{
    [ZKBaseTipTool showMessage:msg];
}

+ (NSString *)lgjeropj_titleString
{
    NSString *var_titleStr = LocalString(@"Added successfully", nil);
    return var_titleStr;
}

+ (NSString *)lgjeropj_msgString:(NSString *)text andDict:(NSDictionary *)dict
{
    NSString *var_msgStr = LocalString(@"Please ask your family to install this app and log in to an account with **** on the Mylibrary page.", nil);
    var_msgStr = [var_msgStr stringByReplacingOccurrencesOfString:@"****" withString:text ?: @""];
    NSInteger var_remain = [[dict objectForKey:AsciiString(@"remain")] integerValue];
    if (var_remain <= 0) {
        var_msgStr = [NSString stringWithFormat:@"%@\n%@", var_msgStr, LocalString(@"Family members reached the upper limit", nil)];
    }
    return var_msgStr;
}

@end
