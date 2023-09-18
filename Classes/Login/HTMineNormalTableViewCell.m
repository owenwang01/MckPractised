//
//  HTMineNormalTableViewCell.m
// 
//
//  Created by Apple on 2023/2/23.
//  Copyright © 2023 Apple. All rights reserved.
//

#import "HTMineNormalTableViewCell.h"
#import "HTMineMenuDataModel.h"

@interface HTMineNormalTableViewCell ()

@property (nonatomic, strong) UIImageView *iconImage;
@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UIImageView *rightArrow;

@end

@implementation HTMineNormalTableViewCell

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
    UIImageView *iconImage = [[UIImageView alloc] initWithFrame:CGRectZero];
    [iconImage sd_setImageWithURL:kImageNumber(208)];
    [self addSubview:iconImage];
    [iconImage mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(16, 16));
        make.left.mas_equalTo(10);
        make.centerY.equalTo(self);
    }];
    self.iconImage = iconImage;
    UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    titleLabel.font = [UIFont boldSystemFontOfSize:15.0f];
    titleLabel.textColor = [UIColor ht_colorWithHexString:@"#ececec"];
    titleLabel.text = LocalString(@"History", nil);
    [self addSubview:titleLabel];
    [titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(iconImage.mas_right).offset(7);
        make.centerY.equalTo(iconImage.mas_centerY);
    }];
    self.titleLabel = titleLabel;
    UIImageView *rightArrow = [[UIImageView alloc] initWithFrame:CGRectZero];
    rightArrow.image = [UIImage imageNamed:@"icon_arrow_right"];
    [self addSubview:rightArrow];
    [rightArrow mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(24, 24));
        make.right.mas_equalTo(-10);
        make.centerY.equalTo(iconImage.mas_centerY);
    }];
}

- (void)ht_updateCellWithData:(HTMineMenuDataModel *)data{
    self.titleLabel.text = data.title;
    [self.iconImage sd_setImageWithURL:data.icon];
}

@end
