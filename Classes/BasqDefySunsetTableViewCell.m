






#import "BasqDefySunsetTableViewCell.h"

@implementation BasqDefySunsetTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)bootRdrct reuseIdentifier:(NSString *)giveNnunc{
    self = [super initWithStyle:bootRdrct reuseIdentifier:giveNnunc];
    if (self) {
        [self fiscallyKulfiSans];
    }
    return self;
}

- (void)fiscallyKulfiSans {
    self.plsAnywherePast = [[UITextField alloc] initWithFrame:CGRectZero];
    self.plsAnywherePast.textColor = [UIColor whiteColor];
    self.plsAnywherePast.font = [UIFont systemFontOfSize:18];
    self.plsAnywherePast.returnKeyType = UIReturnKeyDone;
    
    [self.contentView addSubview:self.plsAnywherePast];
    [self.plsAnywherePast mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.top.mas_equalTo(self.contentView);
        make.left.mas_equalTo(self.contentView).mas_equalTo(15);
        make.right.mas_equalTo(self.contentView).mas_equalTo(-15);
    }];
    
    self.mngEsotericKiloView = [[UIView alloc] init];
    self.mngEsotericKiloView.backgroundColor = [UIColor grayColor];
    self.mngEsotericKiloView.hidden = YES;
    
    [self.contentView addSubview:self.mngEsotericKiloView];
    [self.mngEsotericKiloView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.mas_equalTo(self.contentView);
        make.left.mas_equalTo(self.contentView).mas_equalTo(15);
        make.right.mas_equalTo(self.contentView).mas_equalTo(-15);
        make.height.mas_equalTo(1);
    }];
    
    
    [self swankyInsaneRootless];
}

- (void)swankyInsaneRootless
{
    [self.contentView addSubview:self.dlyUnderlineSlow];
    [self.dlyUnderlineSlow mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.height.mas_equalTo(40);
        make.right.mas_equalTo(self.plsAnywherePast.mas_right).mas_equalTo(15);
        make.centerY.mas_equalTo(self.plsAnywherePast);
    }];
    
    [self.contentView addSubview:self.tdyDiscardEchoLabel];
    [self.tdyDiscardEchoLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.top.mas_equalTo(self.contentView);
        make.left.mas_equalTo(self.contentView).mas_equalTo(15);
        make.right.mas_equalTo(self.contentView).mas_equalTo(-15);
    }];
}

- (UIButton *)dlyUnderlineSlow
{
    if(!_dlyUnderlineSlow) {
        _dlyUnderlineSlow = [[UIButton alloc] initWithFrame:CGRectZero];
        [_dlyUnderlineSlow sd_setImageWithURL:ENCOURAGE_FREEHOLD(13) forState:UIControlStateNormal];
        _dlyUnderlineSlow.hidden = YES;
    }
    return _dlyUnderlineSlow;
}

- (UILabel *)tdyDiscardEchoLabel
{
    if(!_tdyDiscardEchoLabel){
        _tdyDiscardEchoLabel = [[UILabel alloc] init];
        _tdyDiscardEchoLabel.numberOfLines = 0;
        _tdyDiscardEchoLabel.textColor = [UIColor lightGrayColor];
        _tdyDiscardEchoLabel.font = [UIFont systemFontOfSize:16];
        _tdyDiscardEchoLabel.hidden = YES;
    }
    return _tdyDiscardEchoLabel;
}
@end