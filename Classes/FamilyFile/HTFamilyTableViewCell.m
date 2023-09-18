//
//  HTFamilyTableViewCell.m
//  Merriciya
//
//  Created by 昊天 on 2023/5/29.
//

#import "HTFamilyTableViewCell.h"

@interface HTFamilyTableViewCell ()
@property (nonatomic, assign) NSInteger var_curIndex;

@property (nonatomic, strong) UIImageView *var_headerImgView;
@property (nonatomic, strong) UILabel *var_nameLabel;//名字
@property (nonatomic, strong) UILabel *var_titleLabel;//抬头
@property (nonatomic, strong) UIImageView *var_diamondView;//钻石logo
@property (nonatomic, strong) UIButton *var_deleteButton;//删除按钮
@property (nonatomic, strong) UIView *var_lineView;

@end

@implementation HTFamilyTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self ht_setupUI];
    }
    return self;
}

- (void)ht_setupUI {
    self.selectionStyle = UITableViewCellSelectionStyleNone;
    self.backgroundColor = [UIColor clearColor];
    
    self.var_headerImgView = [[UIImageView alloc] init];
    self.var_headerImgView.layer.masksToBounds = YES;
    self.var_headerImgView.layer.cornerRadius = 25;
    [self.contentView addSubview:self.var_headerImgView];
    [self.var_headerImgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(10);
        make.left.mas_equalTo(10);
        make.width.height.mas_equalTo(50);
    }];
    
    self.var_nameLabel = [[UILabel alloc] init];
    self.var_nameLabel.font = [UIFont systemFontOfSize:16];
    self.var_nameLabel.textColor = [UIColor whiteColor];
    [self.contentView addSubview:self.var_nameLabel];
    [self.var_nameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.var_headerImgView);
        make.bottom.mas_equalTo(self.var_headerImgView.mas_centerY);
        make.left.mas_equalTo(self.var_headerImgView.mas_right).offset(10);
    }];
    
    [self lgjeropj_addUi];
}

- (void)lgjeropj_addUi
{
    [self.contentView addSubview:self.var_titleLabel];
    [self.var_titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.var_headerImgView.mas_centerY);
        make.bottom.mas_equalTo(self.var_headerImgView);
        make.left.mas_equalTo(self.var_headerImgView.mas_right).offset(10);
    }];
    
    
    self.var_diamondView = [[UIImageView alloc] initWithFrame:CGRectZero];
    self.var_diamondView.hidden = YES;
    [self.contentView addSubview:self.var_diamondView];
    [self.var_diamondView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.mas_equalTo(self.var_nameLabel);
        make.left.mas_equalTo(self.var_nameLabel.mas_right).offset(10);
        make.width.height.mas_equalTo(20);
    }];

    [self.contentView addSubview:self.var_deleteButton];
    [self.var_deleteButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(self.contentView).offset(-20);
        make.centerY.mas_equalTo(self.contentView.mas_centerY);
        make.height.width.mas_equalTo(40);
    }];
    
    self.var_lineView = [[UIView alloc] init];
    self.var_lineView.backgroundColor = [UIColor lightGrayColor];
    [self.contentView addSubview:self.var_lineView];
    [self.var_lineView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.var_headerImgView.mas_right).offset(10);
        make.right.mas_equalTo(self.contentView);
        make.bottom.mas_equalTo(self.contentView).offset(0);
        make.height.mas_equalTo(0.5);
    }];
}

- (void)lgjeropj_updateCellWithData:(ZQFamilyAccountModel*)model andIndex:(NSInteger)index{
    self.var_curIndex = index;
    
    [self.var_headerImgView sd_setImageWithURL:[NSURL URLWithString:model.face] placeholderImage:[UIImage imageNamed: @"icon_logo"] options:SDWebImageRetryFailed];
    
    if (model.uid.intValue == [HTAccountModel sharedInstance].uid.intValue) {
        self.var_nameLabel.text = [NSString stringWithFormat:@"%@(%@)", model.name,LocalString(@"ME", nil)];
        self.var_deleteButton.hidden = YES;
    } else {
        self.var_nameLabel.text = model.name;
        self.var_deleteButton.hidden = (model.master.intValue == 1) ?YES :NO;
    }

    if (model.master.intValue == 1) {
        self.var_diamondView.hidden = NO;
        if ([[HTAccountModel sharedInstance] ht_isVip]) {
            [self.var_diamondView sd_setImageWithURL:kImageNumber(29)];
        } else {
            [self.var_diamondView sd_setImageWithURL:kImageNumber(30)];
        }
        self.var_titleLabel.text = LocalString(@"Organizer", nil);
    } else {
        self.var_diamondView.hidden = YES;
        self.var_titleLabel.text = LocalString(@"Member", nil);
    }
}

- (void)ht_deleteButtonAction:(UIButton *)sender {
    if(self.var_familyMemberCellClickBlock) {
        self.var_familyMemberCellClickBlock(self.var_curIndex);
    }
}

- (UILabel *)var_titleLabel
{
    if(!_var_titleLabel) {
        _var_titleLabel = [[UILabel alloc] init];
        _var_titleLabel.font = [UIFont systemFontOfSize:14];
        _var_titleLabel.textColor = [UIColor lightGrayColor];
    }
    return _var_titleLabel;
}

- (UIButton *)var_deleteButton
{
    if(!_var_deleteButton) {
        _var_deleteButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_var_deleteButton setImage:[UIImage imageNamed:@"icon_glclose"] forState:UIControlStateNormal];
        [_var_deleteButton addTarget:self action:@selector(ht_deleteButtonAction:) forControlEvents:UIControlEventTouchUpInside];
        _var_deleteButton.hidden = YES;
    }
    return _var_deleteButton;
}

@end
