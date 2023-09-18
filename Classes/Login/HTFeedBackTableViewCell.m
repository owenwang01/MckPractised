//
//  HTFeedBackTableViewCell.m
// 
//
//  Created by Apple on 2023/2/24.
//  Copyright © 2023 Apple. All rights reserved.
//

#import "HTFeedBackTableViewCell.h"
#import <YYText/YYText.h>

@interface HTFeedBackTableViewCell ()

@end

@implementation HTFeedBackTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if(self){
        [self ht_addCellSubviews];
    }
    return self;
}

- (void)ht_addCellSubviews{
    self.selectionStyle = UITableViewCellSelectionStyleNone;
    self.backgroundColor = [UIColor ht_colorWithHexString:@"#232331"];
    UIView *bgView = [[UIView alloc] initWithFrame:CGRectZero];
    bgView.userInteractionEnabled = YES;
    bgView.backgroundColor = [UIColor ht_colorWithHexString:@"#313143"];
    bgView.layer.cornerRadius = 5.0f;
    bgView.layer.masksToBounds = YES;
    [self.contentView addSubview:bgView];
    [bgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.bottom.mas_equalTo(0);
        make.left.mas_equalTo(10);
        make.right.mas_equalTo(-10);
    }];
    
    UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    titleLabel.numberOfLines = 0;
    titleLabel.font = [UIFont boldSystemFontOfSize:16.0f];
    titleLabel.textColor = [UIColor ht_colorWithHexString:@"#ECECEC"];
    titleLabel.text = LocalString(@"Question/Feedback", nil);
    [bgView addSubview:titleLabel];
    [titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(20);
        make.left.mas_equalTo(10);
    }];
    self.titleLabel = titleLabel;
    
    YYTextView *textView = [[YYTextView alloc] initWithFrame:CGRectZero];
    textView.tintColor = [UIColor ht_colorWithHexString:@"#ECECEC"];
    textView.textColor = [UIColor ht_colorWithHexString:@"#ECECEC"];
    textView.font = [UIFont systemFontOfSize:14.0f];
    textView.placeholderText = LocalString(@"Please describe your problems or suggestions here.", nil);
    textView.placeholderFont = [UIFont systemFontOfSize:14];
    textView.placeholderTextColor = [UIColor ht_colorWithHexString:@"#969696"];
    [bgView addSubview:textView];
    [textView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(titleLabel.mas_bottom).mas_equalTo(10);
        make.left.mas_equalTo(8);
        make.right.mas_equalTo(-8);
        make.bottom.mas_equalTo(20);
    }];
    self.textView = textView;
}

@end
