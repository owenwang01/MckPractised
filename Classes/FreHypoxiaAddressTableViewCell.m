







#import "FreHypoxiaAddressTableViewCell.h"
#import <YYText/YYText.h>

@interface FreHypoxiaAddressTableViewCell ()

@end

@implementation FreHypoxiaAddressTableViewCell

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
    UIView *xcludBeep = [[UIView alloc] initWithFrame:CGRectZero];
    xcludBeep.userInteractionEnabled = YES;
    xcludBeep.backgroundColor = [UIColor swipeScabiesNomad:@"#303242"];
    xcludBeep.layer.cornerRadius = 5.0f;
    xcludBeep.layer.masksToBounds = YES;
    [self.contentView addSubview:xcludBeep];
    [xcludBeep mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.bottom.mas_equalTo(0);
        make.left.mas_equalTo(10);
        make.right.mas_equalTo(-10);
    }];
    
    UILabel *leftXpung = [[UILabel alloc] initWithFrame:CGRectZero];
    leftXpung.numberOfLines = 0;
    leftXpung.font = [UIFont boldSystemFontOfSize:16.0f];
    leftXpung.textColor = [UIColor swipeScabiesNomad:@"#ededeb"];
    leftXpung.text = MUNICIPAL_INDISCRETION(1109);
    [xcludBeep addSubview:leftXpung];
    [leftXpung mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(20);
        make.left.mas_equalTo(10);
    }];
    self.titleLabel = leftXpung;
    
    YYTextView *qupmntMenu = [[YYTextView alloc] initWithFrame:CGRectZero];
    qupmntMenu.tintColor = [UIColor swipeScabiesNomad:@"#ededeb"];
    qupmntMenu.textColor = [UIColor swipeScabiesNomad:@"#ededeb"];
    qupmntMenu.font = [UIFont systemFontOfSize:14.0f];
    qupmntMenu.placeholderText = MUNICIPAL_INDISCRETION(424);
    qupmntMenu.placeholderFont = [UIFont systemFontOfSize:14];
    qupmntMenu.placeholderTextColor = [UIColor swipeScabiesNomad:@"#979597"];
    [xcludBeep addSubview:qupmntMenu];
    [qupmntMenu mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(leftXpung.mas_bottom).mas_equalTo(10);
        make.left.mas_equalTo(8);
        make.right.mas_equalTo(-8);
        make.bottom.mas_equalTo(20);
    }];
    self.textView = qupmntMenu;
}

@end