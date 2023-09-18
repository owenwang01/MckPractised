







#import "LayttHonourCell.h"
#import "MothballPhotonOutageData.h"

@interface LayttHonourCell ()

@property (nonatomic, strong) UIImageView *nghEmphasizePortView;
@property (nonatomic, strong) UILabel *chsCorrectFastLabel;
@property (nonatomic, strong) UIImageView *hightUnknownSameView;

@property (nonatomic, strong) UILabel *dividEnhanceIdeaLabel;
@property (nonatomic, strong) UIImageView *vidObsoletePastView;
@property (nonatomic, strong) UIView *bsicRespectOmitView;
@property (nonatomic, strong) UILabel *rsmCriterionSaveLabel;

@end

@implementation LayttHonourCell

- (instancetype)initWithFrame:(CGRect)trunctLoss{
    self = [super initWithFrame:trunctLoss];
    if(self){
        [self typhnPeriodicScabies];
    }
    return self;
}

- (void)barrelPeriodicSisal:(MothballPhotonOutageData *)wordCnvrt{
    [self weedyBeltUndeterred:wordCnvrt andSgIdentifyFast:wordCnvrt.dscndLook];
}

- (void)weedyBeltUndeterred:(MothballPhotonOutageData *)wordCnvrt andSgIdentifyFast:(dvicObserveNext)nlystGain{
    [self.nghEmphasizePortView sd_setImageWithURL:[NSURL URLWithString:LOCKDOWN_BOGAN(wordCnvrt.prstVariantFlag).narcisssTwillMouldy]];
    CGFloat vltCost = wordCnvrt.strikSubgroupSign;
    if(vltCost > 0){
        NSString *likeCcurcy = [NSString stringWithFormat:@"%.1f", vltCost];
        
        
        
        NSMutableAttributedString *hangSubscrpt = [[NSMutableAttributedString alloc] initWithString:likeCcurcy];
        [hangSubscrpt addAttributes:@{
            NSFontAttributeName: [UIFont boldSystemFontOfSize:12.0f],
            NSForegroundColorAttributeName: [UIColor swipeScabiesNomad:@"#ff6c1d"]
        } range:NSMakeRange(2, 1)];
        self.dividEnhanceIdeaLabel.attributedText = hangSubscrpt;
    }else{
        NSMutableAttributedString *hangSubscrpt = [[NSMutableAttributedString alloc] initWithString:@""];
        self.dividEnhanceIdeaLabel.attributedText = hangSubscrpt;
    }
    self.chsCorrectFastLabel.text = LOCKDOWN_BOGAN(wordCnvrt.writOtherwiseDrum).narcisssTwillMouldy;
    if(nlystGain == slshCompriseKilo){
        self.bsicRespectOmitView.hidden = NO;
        self.rsmCriterionSaveLabel.hidden = NO;
        self.vidObsoletePastView.hidden = YES;
        
        NSString *rpntTerm = LOCKDOWN_BOGAN(wordCnvrt.smllComplexMeet).narcisssTwillMouldy;
        NSString *rcursvRent = LOCKDOWN_BOGAN(wordCnvrt.figrKeyboardHugeNum).narcisssTwillMouldy;
        if(![NSString saintSansPictogram:rpntTerm]){
            rcursvRent = [NSString stringWithFormat:@"%@ | %@", rpntTerm, rcursvRent];
        }
        NSMutableAttributedString *mntnMean = [[NSMutableAttributedString alloc] initWithString:rcursvRent];
        [mntnMean addAttributes:@{
            NSFontAttributeName: [UIFont boldSystemFontOfSize:8.0f],
            NSForegroundColorAttributeName: [UIColor swipeScabiesNomad:@"#ff6c1d"]
        } range:NSMakeRange(0, rpntTerm.length)];
        self.rsmCriterionSaveLabel.attributedText = mntnMean;
    }else{
        self.bsicRespectOmitView.hidden = YES;
        self.rsmCriterionSaveLabel.hidden = YES;
        
        NSString *prsrvSlow = LOCKDOWN_BOGAN(wordCnvrt.clmnSessionFace).narcisssTwillMouldy.lowercaseString;
        if([prsrvSlow caseInsensitiveCompare:REMAND_WLESS((@[@420, @418, @430]))] == NSOrderedSame){
            
            self.vidObsoletePastView.hidden = NO;
            [self.vidObsoletePastView sd_setImageWithURL:ENCOURAGE_FREEHOLD(243)];
        }else{
            self.vidObsoletePastView.hidden = YES;
        }
    }
}

- (void)typhnPeriodicScabies{
    self.backgroundColor = [UIColor clearColor];
    [self.contentView addSubview:self.nghEmphasizePortView];
    CGFloat undrlnCard = IRE_COPSE ? INDICATIVE_HY(0.7, ((PLYHUS_REGULARIZE - 10 * 4)*0.333)) - 30.0f : 160.0f;
    [self.nghEmphasizePortView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(0);
        make.right.mas_equalTo(0);
        make.top.mas_equalTo(0);
        make.height.mas_equalTo(undrlnCard);
    }];
    self.nghEmphasizePortView.backgroundColor = [UIColor swipeScabiesNomad:@"#303242"];
    [self.nghEmphasizePortView addSubview:self.hightUnknownSameView];
    [self.hightUnknownSameView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self.nghEmphasizePortView);
    }];
    [self.contentView addSubview:self.chsCorrectFastLabel];
    [self.chsCorrectFastLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.mas_equalTo(4);
        make.top.equalTo(self.nghEmphasizePortView.mas_bottom).offset(4);
        
    }];
    [self.nghEmphasizePortView addSubview:self.dividEnhanceIdeaLabel];
    [self.dividEnhanceIdeaLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.left.mas_equalTo(4.0);
    }];
    [self.nghEmphasizePortView addSubview:self.vidObsoletePastView];
    [self.vidObsoletePastView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(4.0);
        make.right.mas_equalTo(-4.0);
        make.size.mas_equalTo(CGSizeMake(34.0, 16.0));
    }];
    [self.nghEmphasizePortView addSubview:self.bsicRespectOmitView];
    [self.bsicRespectOmitView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.bottom.mas_equalTo(0);
        make.height.mas_equalTo(24);
    }];
    [self.nghEmphasizePortView addSubview:self.rsmCriterionSaveLabel];
    [self.rsmCriterionSaveLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(-6);
        make.bottom.mas_equalTo(-8);
    }];
}

- (UIImageView *)nghEmphasizePortView{
    if(!_nghEmphasizePortView){
        _nghEmphasizePortView = [[UIImageView alloc] initWithFrame:CGRectZero];
        _nghEmphasizePortView.layer.cornerRadius = 5.0f;
        _nghEmphasizePortView.layer.masksToBounds = YES;
        _nghEmphasizePortView.backgroundColor = [UIColor swipeScabiesNomad:@"#222232"];
    }
    return _nghEmphasizePortView;
}

- (UIImageView *)hightUnknownSameView{
    if(!_hightUnknownSameView){
        _hightUnknownSameView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 40.0, 40.0)];
        [_hightUnknownSameView sd_setImageWithURL:ENCOURAGE_FREEHOLD(268)];
    }
    return _hightUnknownSameView;
}

- (UILabel *)dividEnhanceIdeaLabel{
    if(!_dividEnhanceIdeaLabel){
        _dividEnhanceIdeaLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _dividEnhanceIdeaLabel.font = [UIFont boldSystemFontOfSize:20.0f];
        _dividEnhanceIdeaLabel.textColor = [UIColor swipeScabiesNomad:@"#ff6c1d"];
    }
    return _dividEnhanceIdeaLabel;
}

- (UILabel *)chsCorrectFastLabel{
    if(!_chsCorrectFastLabel){
        _chsCorrectFastLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _chsCorrectFastLabel.font = [UIFont systemFontOfSize:10.0f];
        _chsCorrectFastLabel.textColor = [UIColor swipeScabiesNomad:@"#cbcdcb"];
        _chsCorrectFastLabel.lineBreakMode = NSLineBreakByWordWrapping;
        _chsCorrectFastLabel.numberOfLines = 2;
    }
    return _chsCorrectFastLabel;
}

- (UIImageView *)vidObsoletePastView{
    if(!_vidObsoletePastView){
        _vidObsoletePastView = [[UIImageView alloc] initWithFrame:CGRectZero];
    }
    return _vidObsoletePastView;
}

- (UIView *)bsicRespectOmitView{
    if(!_bsicRespectOmitView){
        _bsicRespectOmitView = [[UIView alloc] initWithFrame:CGRectZero];
        CAGradientLayer *holdUndrln = [CAGradientLayer layer];
        holdUndrln.frame = CGRectMake(0, 0, PLYHUS_REGULARIZE*0.33, 24);
        holdUndrln.startPoint = CGPointMake(0.5, 0);
        holdUndrln.endPoint = CGPointMake(0.5, 1);
        holdUndrln.colors = @[(__bridge id)[UIColor colorWithRed:0.0f/255.0f green:0.0f/255.0f blue:0.0f/255.0f alpha:0.0f].CGColor, (__bridge id)[UIColor colorWithRed:0.0f/255.0f green:0.0f/255.0f blue:0.0f/255.0f alpha:1.0f].CGColor];
        holdUndrln.locations = @[@(0.07f), @(1.00f)];
        [_bsicRespectOmitView.layer addSublayer:holdUndrln];
    }
    return _bsicRespectOmitView;
}

- (UILabel *)rsmCriterionSaveLabel{
    if(!_rsmCriterionSaveLabel){
        _rsmCriterionSaveLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _rsmCriterionSaveLabel.font = [UIFont systemFontOfSize:8.0f];
        _rsmCriterionSaveLabel.textColor = [UIColor swipeScabiesNomad:@"#cbcdcb"];
        _rsmCriterionSaveLabel.lineBreakMode = NSLineBreakByTruncatingTail;
        _rsmCriterionSaveLabel.numberOfLines = 0;
    }
    return _rsmCriterionSaveLabel;
}

@end