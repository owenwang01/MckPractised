






#import "OrganisationalPlunkTableViewCell.h"

@interface OrganisationalPlunkTableViewCell ()
@property (nonatomic, assign) NSInteger lignCompanyOmit;

@property (nonatomic, strong) UIImageView *invntNetworkAreaView;
@property (nonatomic, strong) UILabel *vwlEmployeSendLabel;
@property (nonatomic, strong) UILabel *thghConsumePageLabel;
@property (nonatomic, strong) UIImageView *lvlUselessExitView;
@property (nonatomic, strong) UIButton *bjctReserveTrim;
@property (nonatomic, strong) UIView *mngEsotericKiloView;

@end

@implementation OrganisationalPlunkTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)bootRdrct reuseIdentifier:(NSString *)giveNnunc{
    self = [super initWithStyle:bootRdrct reuseIdentifier:giveNnunc];
    if (self) {
        [self fiscallyKulfiSans];
    }
    return self;
}

- (void)fiscallyKulfiSans {
    self.selectionStyle = UITableViewCellSelectionStyleNone;
    self.backgroundColor = [UIColor clearColor];
    
    self.invntNetworkAreaView = [[UIImageView alloc] init];
    self.invntNetworkAreaView.layer.masksToBounds = YES;
    self.invntNetworkAreaView.layer.cornerRadius = 25;
    [self.contentView addSubview:self.invntNetworkAreaView];
    [self.invntNetworkAreaView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(10);
        make.left.mas_equalTo(10);
        make.width.height.mas_equalTo(50);
    }];
    
    self.vwlEmployeSendLabel = [[UILabel alloc] init];
    self.vwlEmployeSendLabel.font = [UIFont systemFontOfSize:16];
    self.vwlEmployeSendLabel.textColor = [UIColor whiteColor];
    [self.contentView addSubview:self.vwlEmployeSendLabel];
    [self.vwlEmployeSendLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.invntNetworkAreaView);
        make.bottom.mas_equalTo(self.invntNetworkAreaView.mas_centerY);
        make.left.mas_equalTo(self.invntNetworkAreaView.mas_right).offset(10);
    }];
    
    [self favelaAwakeThickener];
}

- (void)favelaAwakeThickener
{
    [self.contentView addSubview:self.thghConsumePageLabel];
    [self.thghConsumePageLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.invntNetworkAreaView.mas_centerY);
        make.bottom.mas_equalTo(self.invntNetworkAreaView);
        make.left.mas_equalTo(self.invntNetworkAreaView.mas_right).offset(10);
    }];
    
    
    self.lvlUselessExitView = [[UIImageView alloc] initWithFrame:CGRectZero];
    self.lvlUselessExitView.hidden = YES;
    [self.contentView addSubview:self.lvlUselessExitView];
    [self.lvlUselessExitView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.mas_equalTo(self.vwlEmployeSendLabel);
        make.left.mas_equalTo(self.vwlEmployeSendLabel.mas_right).offset(10);
        make.width.height.mas_equalTo(20);
    }];

    [self.contentView addSubview:self.bjctReserveTrim];
    [self.bjctReserveTrim mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(self.contentView).offset(-20);
        make.centerY.mas_equalTo(self.contentView.mas_centerY);
        make.height.width.mas_equalTo(40);
    }];
    
    self.mngEsotericKiloView = [[UIView alloc] init];
    self.mngEsotericKiloView.backgroundColor = [UIColor lightGrayColor];
    [self.contentView addSubview:self.mngEsotericKiloView];
    [self.mngEsotericKiloView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.invntNetworkAreaView.mas_right).offset(10);
        make.right.mas_equalTo(self.contentView);
        make.bottom.mas_equalTo(self.contentView).offset(0);
        make.height.mas_equalTo(0.5);
    }];
}

- (void)prizefightTestedLass:(DstrctiblDeftSubsistModel*)memoPnn andRprtRedirectFact:(NSInteger)suchSssn{
    self.lignCompanyOmit = suchSssn;
    
    [self.invntNetworkAreaView sd_setImageWithURL:[NSURL URLWithString:memoPnn.face] placeholderImage:[UIImage imageNamed: @"icon_logo"] options:SDWebImageRetryFailed];
    
    if (memoPnn.uid.intValue == [FryAllowanceKnapsackModel sharedInstance].uid.intValue) {
        self.vwlEmployeSendLabel.text = [NSString stringWithFormat:@"%@(%@)", memoPnn.name,MUNICIPAL_INDISCRETION(886)];
        self.bjctReserveTrim.hidden = YES;
    } else {
        self.vwlEmployeSendLabel.text = memoPnn.name;
        self.bjctReserveTrim.hidden = (memoPnn.master.intValue == 1) ?YES :NO;
    }

    if (memoPnn.master.intValue == 1) {
        self.lvlUselessExitView.hidden = NO;
        if ([[FryAllowanceKnapsackModel sharedInstance] favelaLaburnumInfect]) {
            [self.lvlUselessExitView sd_setImageWithURL:ENCOURAGE_FREEHOLD(29)];
        } else {
            [self.lvlUselessExitView sd_setImageWithURL:ENCOURAGE_FREEHOLD(30)];
        }
        self.thghConsumePageLabel.text = MUNICIPAL_INDISCRETION(517);
    } else {
        self.lvlUselessExitView.hidden = YES;
        self.thghConsumePageLabel.text = MUNICIPAL_INDISCRETION(514);
    }
}

- (void)kraalMornDelicately:(UIButton *)mnfstMemo {
    if(self.thrAugmentViceBlock) {
        self.thrAugmentViceBlock(self.lignCompanyOmit);
    }
}

- (UILabel *)thghConsumePageLabel
{
    if(!_thghConsumePageLabel) {
        _thghConsumePageLabel = [[UILabel alloc] init];
        _thghConsumePageLabel.font = [UIFont systemFontOfSize:14];
        _thghConsumePageLabel.textColor = [UIColor lightGrayColor];
    }
    return _thghConsumePageLabel;
}

- (UIButton *)bjctReserveTrim
{
    if(!_bjctReserveTrim) {
        _bjctReserveTrim = [UIButton buttonWithType:UIButtonTypeCustom];
        [_bjctReserveTrim setImage:[UIImage imageNamed:@"niqDocumentHome"] forState:UIControlStateNormal];
        [_bjctReserveTrim addTarget:self action:@selector(kraalMornDelicately:) forControlEvents:UIControlEventTouchUpInside];
        _bjctReserveTrim.hidden = YES;
    }
    return _bjctReserveTrim;
}

@end