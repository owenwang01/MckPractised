







#import "ObsScathRolyTableViewCell.h"
#import "ObsVoicemailShirtyModel.h"

@interface ObsScathRolyTableViewCell ()

@property (nonatomic, strong) UIImageView *iconImage;
@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UIImageView *cmmFragmentList;

@end

@implementation ObsScathRolyTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)bootRdrct reuseIdentifier:(NSString *)giveNnunc{
    self = [super initWithStyle:bootRdrct reuseIdentifier:giveNnunc];
    if(self){
        [self typhnSkepticismWrapp];
    }
    return self;
}

- (void)typhnSkepticismWrapp{
    self.selectionStyle = UITableViewCellSelectionStyleNone;
    self.backgroundColor = [UIColor swipeScabiesNomad:@"#222232"];
    UIImageView *rnsttYear = [[UIImageView alloc] initWithFrame:CGRectZero];
    [rnsttYear sd_setImageWithURL:ENCOURAGE_FREEHOLD(208)];
    [self addSubview:rnsttYear];
    [rnsttYear mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(16, 16));
        make.left.mas_equalTo(10);
        make.centerY.equalTo(self);
    }];
    self.iconImage = rnsttYear;
    UILabel *leftXpung = [[UILabel alloc] initWithFrame:CGRectZero];
    leftXpung.font = [UIFont boldSystemFontOfSize:15.0f];
    leftXpung.textColor = [UIColor swipeScabiesNomad:@"#ebedeb"];
    leftXpung.text = MUNICIPAL_INDISCRETION(260);
    [self addSubview:leftXpung];
    [leftXpung mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(rnsttYear.mas_right).offset(7);
        make.centerY.equalTo(rnsttYear.mas_centerY);
    }];
    self.titleLabel = leftXpung;
    UIImageView *pttrnHome = [[UIImageView alloc] initWithFrame:CGRectZero];
    pttrnHome.image = [UIImage imageNamed:@"icon_arrow_right"];
    [self addSubview:pttrnHome];
    [pttrnHome mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(24, 24));
        make.right.mas_equalTo(-10);
        make.centerY.equalTo(rnsttYear.mas_centerY);
    }];
}

- (void)barrelPeriodicSisal:(ObsVoicemailShirtyModel *)nvgtOmit{
    self.titleLabel.text = nvgtOmit.title;
    [self.iconImage sd_setImageWithURL:nvgtOmit.icon];
}

@end