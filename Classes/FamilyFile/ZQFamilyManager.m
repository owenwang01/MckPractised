//
//  ZQFamilyManager.m
//  Moshfocus
//
//  Created by dn on 2023/6/26.
//rr

#import "ZQFamilyManager.h"

@implementation ZQFamilyManager

+ (NSDictionary *)lgjeropj_familyText
{
    NSString *var_stringOne = LocalString(@"How to add family accounts:", nil);
    NSString *var_stringTwo = LocalString(@"Enter the email address or account ID of a family member and click Add to add him or her successfully.", nil);
    NSString *var_stringThree = LocalString(@"Family members need to Log In to their family account to get the premium version.", nil);
    NSString *var_stringFour = LocalString(@"Your family members can register an account in the My library page or Settings page of the app.", nil);
    
    NSString *var_titleStr = var_stringOne;
    NSMutableString *var_msgStr = [NSMutableString stringWithString:var_stringTwo];
    [var_msgStr appendString:@"\n\n"];
    [var_msgStr appendString:AsciiString(@"Note: ")];
    [var_msgStr appendString:@"\n"];
    [var_msgStr appendString:var_stringThree];
    [var_msgStr appendString:@"\n"];
    [var_msgStr appendString:var_stringFour];
    NSDictionary *dict = @{AsciiString(@"title"):var_titleStr,AsciiString(@"msg"):var_msgStr};
    return dict;
}



@end
