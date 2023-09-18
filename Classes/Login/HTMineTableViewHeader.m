//
//  HTMineTableViewHeader.m
// 
//
//  Created by Apple on 2023/2/23.
//  Copyright © 2023 Apple. All rights reserved.
//

#import "HTMineTableViewHeader.h"
#import <StoreKit/StoreKit.h>
#import "HTWebViewController.h"
#import "HTFamilyViewController.h"
#import "ZKBaseEdgeInsetButton.h"
#import "UIViewController+Navigation.h"

@interface HTMineTableViewHeader()

@property (nonatomic, strong) UIButton *headerButton;
@property (nonatomic, strong) UILabel *premiumLabel;
@property (nonatomic, strong) UIImageView *premiumImage;
@property (nonatomic, strong) ZKBaseEdgeInsetButton *userNameBtn;
@property (nonatomic, strong) UILabel *moneyLabel;

@end

@implementation HTMineTableViewHeader

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if(self){
        self.userInteractionEnabled = YES;
        [self ht_addSubviews];
        @weakify(self);
        [[self rac_signalForControlEvents:UIControlEventTouchUpInside] subscribeNext:^(__kindof UIControl * _Nullable x) {
            @strongify(self);
            [self ht_personDataAction];
        }];
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] init];
        [[tap rac_gestureSignal] subscribeNext:^(__kindof UIGestureRecognizer * _Nullable x) {
            if ([[[HTAccountModel sharedInstance] var_familyPlanState] integerValue] > 0) {
                // 家庭计划
                HTFamilyViewController *vc = [[HTFamilyViewController alloc] init];
                vc.hidesBottomBarWhenPushed = YES;
                [[[UIViewController lgjeropj_currentViewController] navigationController] pushViewController:vc animated:YES];
            }
        }];
        [self.premiumImage addGestureRecognizer:tap];
    }
    return self;
}

- (void)ht_addSubviews {
    
    UIButton *headerButton = [UIButton buttonWithType:UIButtonTypeCustom];
    headerButton.userInteractionEnabled = NO;
    [headerButton sd_setBackgroundImageWithURL:kImageNumber(208) forState:UIControlStateNormal];
    [self addSubview:headerButton];
    [headerButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(60, 60));
        make.left.mas_equalTo(10);
        make.top.mas_equalTo(7);
    }];
    self.headerButton = headerButton;
    ZKBaseEdgeInsetButton *userNameBtn = [ZKBaseEdgeInsetButton buttonWithType:UIButtonTypeCustom];
    userNameBtn.userInteractionEnabled = NO;
    [userNameBtn sd_setImageWithURL:kImageNumber(217) forState:UIControlStateNormal];
    [userNameBtn setTitle:LocalString(@"Login/Signup", nil) forState:UIControlStateNormal];
    userNameBtn.titleLabel.font = [UIFont boldSystemFontOfSize:16.0f];
    [userNameBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    userNameBtn.imageTitleSpace = 5.0f;
    userNameBtn.edgeInsetsStyle = ENUM_ZKButtonEdgeInsetsStyleImageRight;
    [self addSubview:userNameBtn];
    [userNameBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(headerButton.mas_centerY);
        make.left.equalTo(headerButton.mas_right).offset(10.0);
        make.width.mas_lessThanOrEqualTo(SCREEN_WIDTH-194);
    }];
    UIEdgeInsets inset = userNameBtn.imageEdgeInsets;
    inset.top = 2;
    userNameBtn.imageEdgeInsets = inset;
    self.userNameBtn = userNameBtn;
        
    self.premiumImage = [[UIImageView alloc] init];
    self.premiumImage.hidden = YES;
    self.premiumImage.userInteractionEnabled = YES;
    [self.premiumImage sd_setImageWithURL:kImageNumber(245)];
    self.premiumImage.contentMode = UIViewContentModeScaleAspectFit;
    [self addSubview:self.premiumImage];
    [self.premiumImage mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(headerButton);
        make.left.equalTo(headerButton.mas_right).offset(10.0);
        make.width.mas_equalTo(100);
        make.height.mas_equalTo(27);
    }];
    
    self.premiumLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    self.premiumLabel.hidden = YES;
    self.premiumLabel.font = [UIFont systemFontOfSize:13.0f];
    self.premiumLabel.textColor = [UIColor colorWithWhite:1 alpha:0.8];
    [self addSubview:self.premiumLabel];
    [self.premiumLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.premiumImage.mas_bottom).offset(5);
        make.left.equalTo(headerButton.mas_right).offset(10.0);
    }];

    UIButton *vipBgButton = [UIButton buttonWithType:UIButtonTypeCustom];
    vipBgButton.contentEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 0);
    vipBgButton.imageView.contentMode = UIViewContentModeScaleAspectFill;
    vipBgButton.contentHorizontalAlignment = UIControlContentHorizontalAlignmentFill;
    vipBgButton.contentVerticalAlignment = UIControlContentVerticalAlignmentFill;
    vipBgButton.layer.masksToBounds = YES;
    vipBgButton.layer.cornerRadius = 10;
    [vipBgButton sd_setImageWithURL:kImageNumber(236) forState:UIControlStateNormal];
    [self addSubview:vipBgButton];
    [vipBgButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(headerButton.mas_bottom).offset(20);
        make.left.mas_equalTo(10);
        make.right.mas_equalTo(-10);
        make.height.mas_equalTo(60);
    }];
    [[vipBgButton rac_signalForControlEvents:UIControlEventTouchUpInside] subscribeNext:^(__kindof UIControl * _Nullable x) {
        HTCommonConfiguration.lgjeropj_shared.BLOCK_toPremiumBlock(45);
    }];
    
    UILabel *specialLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    specialLabel.font = [UIFont boldSystemFontOfSize:16.0f];
    specialLabel.text = AsciiString(@"Special Offer For You");
    specialLabel.textColor = [UIColor ht_colorWithHexString:@"#222222"];
    [self addSubview:specialLabel];
    [vipBgButton addSubview:specialLabel];
    [specialLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(8);
        make.left.mas_equalTo(10);
    }];
    
    UILabel *moneyLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    moneyLabel.font = [UIFont systemFontOfSize:14.0f];
    moneyLabel.textColor = [UIColor ht_colorWithHexString:@"#222222"];
    [self addSubview:moneyLabel];
    [vipBgButton addSubview:moneyLabel];
    [moneyLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(specialLabel.mas_bottom).offset(3);
        make.left.mas_equalTo(10);
    }];
    
    NSString *contentText = @"";
    NSString *tagText = @"";
    NSRange tagRange = [contentText rangeOfString:tagText];
    NSMutableAttributedString *attStr = [[NSMutableAttributedString alloc] initWithString:contentText];
    [attStr addAttribute:NSFontAttributeName value:[UIFont boldSystemFontOfSize:18.0] range:tagRange];
    moneyLabel.attributedText = attStr;
    self.moneyLabel = moneyLabel;
    
    UIImageView *vipRightArrow = [[UIImageView alloc] initWithFrame:CGRectZero];
    vipRightArrow.image = [UIImage imageNamed:@"icon_arrow_right"];
    [vipBgButton addSubview:vipRightArrow];
    [vipRightArrow mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(24, 24));
        make.right.mas_equalTo(-12);
        make.centerY.equalTo(vipBgButton.mas_centerY);
    }];
}

- (void)ht_updateViewData{    
    if ([HTAccountModel sharedInstance].var_isLogin) {
        [self.userNameBtn setTitle:[HTAccountModel sharedInstance].user_name forState:UIControlStateNormal];
        if ([NSString ht_isEmpty:[HTAccountModel sharedInstance].user_face]) {
            [self.headerButton sd_setBackgroundImageWithURL:kImageNumber(208) forState:UIControlStateNormal];
        } else {
            [self.headerButton sd_setBackgroundImageWithURL:[NSURL URLWithString:kFormat([HTAccountModel sharedInstance].user_face).ht_isEmptyStr] forState:UIControlStateNormal];
        }
    } else {
        [self.userNameBtn setTitle:LocalString(@"Login/Signup", nil) forState:UIControlStateNormal];
        [self.headerButton sd_setBackgroundImageWithURL:kImageNumber(208) forState:UIControlStateNormal];
    }
    if([[HTAccountModel sharedInstance] ht_isVip]) {
        UIButton *button = (UIButton *)self.moneyLabel.superview;
        [button mas_updateConstraints:^(MASConstraintMaker *make) {
            make.height.mas_equalTo(0);
        }];
        button.hidden = YES;
        self.premiumImage.hidden = NO;
        self.premiumLabel.hidden = NO;
        NSString *var_pid = @"";
        NSString *var_cancelTime = @"";
        if ([[[HTAccountModel sharedInstance] var_familyPlanState] integerValue] > 0) {
            var_pid = [[HTAccountModel sharedInstance] var_pid];
            if (![[HTAccountModel sharedInstance].var_renewStatus isEqualToString:@"1"]) {
                if ([[HTAccountModel sharedInstance].var_vipEndTime longLongValue] > 0) {
                    NSDate *date = [NSDate dateWithTimeIntervalSince1970:[[HTAccountModel sharedInstance].var_vipEndTime longLongValue]];
                    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
                    [formatter setDateFormat:AsciiString(@"MMM d, yyyy")];
                    NSString *dateString = [formatter stringFromDate:date];
                    var_cancelTime = [NSString stringWithFormat:@"%@ %@", LocalString(@"Cancels on", nil), dateString];
                }
            }
        } else if ([[[HTAccountModel sharedInstance] var_bindPlanState] integerValue] > 0) {
            var_pid = [[HTAccountModel sharedInstance] var_bindPid];
            if (![[HTAccountModel sharedInstance].var_bindRenewStatus isEqualToString:@"1"]) {
                if ([[HTAccountModel sharedInstance].var_bindEndTime longLongValue] > 0) {
                    NSDate *date = [NSDate dateWithTimeIntervalSince1970:[[HTAccountModel sharedInstance].var_bindEndTime longLongValue]];
                    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
                    [formatter setDateFormat:AsciiString(@"MMM d, yyyy")];
                    NSString *dateString = [formatter stringFromDate:date];
                    var_cancelTime = [NSString stringWithFormat:@"%@ %@", LocalString(@"Cancels on", nil), dateString];
                }
            }
        } else if ([[HTAccountModel sharedInstance] ht_isDeviceVip]) {
            var_pid = [[NSUserDefaults standardUserDefaults] stringForKey:@"udf_devicePid"];
            var_cancelTime = @"";
        } else if ([[HTAccountModel sharedInstance] ht_isLocalVip]) {
            var_pid = [[HTAccountModel sharedInstance] ht_pidByLocalVip];
            NSString *var_localData = [[NSUserDefaults standardUserDefaults] objectForKey:STATIC_kIsFinishSubscribe];
            NSDictionary *localDataObj = [var_localData mj_JSONObject];
            NSString *var_renewStatus = kFormat(localDataObj[kSubscribeRenewStatusKey]).ht_isEmptyStr;
            if ([var_renewStatus integerValue] > 0) {
                NSString *var_vipEndTime = kFormat(localDataObj[kSubscribeExpireDateKey]).ht_isEmptyStr;
                NSDate *date = [NSDate dateWithTimeIntervalSince1970:[var_vipEndTime longLongValue]];
                NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
                [formatter setDateFormat:AsciiString(@"MMM d, yyyy")];
                NSString *dateString = [formatter stringFromDate:date];
                var_cancelTime = [NSString stringWithFormat:@"%@ %@", LocalString(@"Cancels on", nil), dateString];
            }
        }
        if ([var_pid containsString:AsciiString(@"family")]) {
            [self.premiumImage sd_setImageWithURL:kImageNumber(266)];
        } else {
            [self.premiumImage sd_setImageWithURL:kImageNumber(245)];
        }
        if ([var_pid containsString:AsciiString(@"month")]) {
            self.premiumLabel.text = AsciiString(@"Monthly");
        } else if ([var_pid containsString:AsciiString(@"year")]) {
            self.premiumLabel.text = LocalString(@"Annually", nil);
        } else if ([var_pid containsString:AsciiString(@"week")]) {
            self.premiumLabel.text = LocalString(@"Weekly", nil);
        }
        if (var_cancelTime.length > 0) {
            self.premiumLabel.text = var_cancelTime;
        }
        [self.userNameBtn mas_remakeConstraints:^(MASConstraintMaker *make) {
            make.bottom.equalTo(self.premiumImage.mas_top).offset(-5);
            make.left.equalTo(self.headerButton.mas_right).offset(10.0);
            make.width.mas_lessThanOrEqualTo(SCREEN_WIDTH-194);
        }];
    } else {
        UIButton *button = (UIButton *)self.moneyLabel.superview;
        [button mas_updateConstraints:^(MASConstraintMaker *make) {
            make.height.mas_equalTo(60);
        }];
        button.hidden = NO;
        self.premiumImage.hidden = YES;
        self.premiumLabel.hidden = YES;
        [self.userNameBtn mas_remakeConstraints:^(MASConstraintMaker *make) {
            make.centerY.equalTo(self.headerButton.mas_centerY);
            make.left.equalTo(self.headerButton.mas_right).offset(10.0);
            make.width.mas_lessThanOrEqualTo(SCREEN_WIDTH-194);
        }];
        if (HTCommonConfiguration.lgjeropj_shared.BLOCK_k12Block() > 0) {
            NSString *var_activity_product = @"";
            NSArray *var_k3 = HTCommonConfiguration.lgjeropj_shared.BLOCK_k3Block();
            if (var_k3.count > 0) {
                NSInteger var_activity = [[var_k3 firstObject] integerValue];
                if (var_activity == 1) {
                    // 有活动
                    if (var_k3.count > 2) {
                        var_activity_product = [NSString stringWithFormat:@"%@", [var_k3 objectAtIndex:2]];
                    }
                }
            }
            NSDictionary *var_product = @{};
            if (var_activity_product.length > 0) {
                var_product = [HTCommonConfiguration.lgjeropj_shared.BLOCK_serverProductsBlock() objectForKey:AsciiString(@"trial")];
            } else {
                var_product = [HTCommonConfiguration.lgjeropj_shared.BLOCK_serverProductsBlock() objectForKey:AsciiString(@"month")];
            }
            NSString *priceText = [NSString stringWithFormat:@"%@%@", AsciiString(@"$"), var_product[AsciiString(@"h1")]];
            NSString *contentText = [NSString stringWithFormat:@"%@ %@", priceText, LocalString(@"for the 1 month", nil)];
            NSRange tagRange = [contentText rangeOfString:priceText];
            NSMutableAttributedString *attStr = [[NSMutableAttributedString alloc] initWithString:contentText];
            [attStr addAttribute:NSFontAttributeName value:[UIFont boldSystemFontOfSize:18.0] range:tagRange];
            self.moneyLabel.attributedText = attStr;
        } else {
            SKProduct *product = HTCommonConfiguration.lgjeropj_shared.BLOCK_getProductWithIdBlock(([[NSUserDefaults standardUserDefaults] boolForKey:@"udf_showFreeMonth"]?HT_IPA_Free_Month:HT_IPA_Month));
            if (product) {
                NSString *priceText = [NSString stringWithFormat:@"%@%.2f", @"$", product.price.floatValue];
                if(product.introductoryPrice){
                    priceText = [NSString stringWithFormat:@"%@%.2f", @"$", product.introductoryPrice.price.floatValue];
                }
                if (priceText.doubleValue <= 0.0) {
                    priceText = LocalString(@"Free", nil);
                }
                NSString *contentText = [NSString stringWithFormat:@"%@ %@", priceText, AsciiString(@"for the 1 month")];
                NSRange tagRange = [contentText rangeOfString:priceText];
                NSMutableAttributedString *attStr = [[NSMutableAttributedString alloc] initWithString:contentText];
                [attStr addAttribute:NSFontAttributeName value:[UIFont boldSystemFontOfSize:18.0] range:tagRange];
                self.moneyLabel.attributedText = attStr;
            }
        }
    }
    
}

- (void)ht_personDataAction{
    HTWebViewController *vc = [[HTWebViewController alloc] init];
    vc.modalPresentationStyle = UIModalPresentationOverFullScreen;
    vc.source = @"14";
    [[UIViewController lgjeropj_currentViewController] presentViewController:vc animated:YES completion:nil];
}

@end
