//
//  HTFamilyMemberTableViewCell.m
//  Merriciya
//
//  Created by 昊天 on 2023/5/30.
//

#import "HTFamilyMemberTableViewCell.h"

@implementation HTFamilyMemberTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self ht_setupUI];
    }
    return self;
}

- (void)ht_setupUI {
    self.var_textField = [[UITextField alloc] initWithFrame:CGRectZero];
    self.var_textField.textColor = [UIColor whiteColor];
    self.var_textField.font = [UIFont systemFontOfSize:18];
    self.var_textField.returnKeyType = UIReturnKeyDone;
    
    [self.contentView addSubview:self.var_textField];
    [self.var_textField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.top.mas_equalTo(self.contentView);
        make.left.mas_equalTo(self.contentView).mas_equalTo(15);
        make.right.mas_equalTo(self.contentView).mas_equalTo(-15);
    }];
    
    self.var_lineView = [[UIView alloc] init];
    self.var_lineView.backgroundColor = [UIColor grayColor];
    self.var_lineView.hidden = YES;
    
    [self.contentView addSubview:self.var_lineView];
    [self.var_lineView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.mas_equalTo(self.contentView);
        make.left.mas_equalTo(self.contentView).mas_equalTo(15);
        make.right.mas_equalTo(self.contentView).mas_equalTo(-15);
        make.height.mas_equalTo(1);
    }];
    
    
    [self lgjeropj_continuUi];
}

- (void)lgjeropj_continuUi
{
    [self.contentView addSubview:self.var_questionButton];
    [self.var_questionButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.height.mas_equalTo(40);
        make.right.mas_equalTo(self.var_textField.mas_right).mas_equalTo(15);
        make.centerY.mas_equalTo(self.var_textField);
    }];
    
    [self.contentView addSubview:self.var_detailLabel];
    [self.var_detailLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.top.mas_equalTo(self.contentView);
        make.left.mas_equalTo(self.contentView).mas_equalTo(15);
        make.right.mas_equalTo(self.contentView).mas_equalTo(-15);
    }];
}

- (UIButton *)var_questionButton
{
    if(!_var_questionButton) {
        _var_questionButton = [[UIButton alloc] initWithFrame:CGRectZero];
        [_var_questionButton sd_setImageWithURL:kImageNumber(13) forState:UIControlStateNormal];
        _var_questionButton.hidden = YES;
    }
    return _var_questionButton;
}

- (UILabel *)var_detailLabel
{
    if(!_var_detailLabel){
        _var_detailLabel = [[UILabel alloc] init];
        _var_detailLabel.numberOfLines = 0;
        _var_detailLabel.textColor = [UIColor lightGrayColor];
        _var_detailLabel.font = [UIFont systemFontOfSize:16];
        _var_detailLabel.hidden = YES;
    }
    return _var_detailLabel;
}
@end
