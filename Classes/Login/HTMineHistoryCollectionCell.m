//
//  HTMineHistoryCollectionCell.m
// 
//
//  Created by Apple on 2022/11/14.
//  Copyright © 2022 Apple. All rights reserved.
//

#import "HTMineHistoryCollectionCell.h"
#import "HTHistoryData.h"

@interface HTMineHistoryCollectionCell ()

@property (nonatomic, strong) UIImageView *coverImageView;
@property (nonatomic, strong) UILabel *var_videoDescLabel;
@property (nonatomic, strong) UIImageView *var_playImageView;

@property (nonatomic, strong) UILabel *var_videoRateLabel;
@property (nonatomic, strong) UIImageView *var_camImageView;
@property (nonatomic, strong) UIView *var_bottomBarView;
@property (nonatomic, strong) UILabel *var_videoTagLabel;

@end

@implementation HTMineHistoryCollectionCell

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if(self){
        [self ht_addCellSubViews];
    }
    return self;
}

- (void)ht_updateCellWithData:(HTHistoryData *)var_dataModel{
    [self ht_privateUpdateCellWithData:var_dataModel andVideoType:var_dataModel.var_videoType];
}

- (void)ht_privateUpdateCellWithData:(HTHistoryData *)var_dataModel andVideoType:(ENUM_HTVideoType)videoType{
    [self.coverImageView sd_setImageWithURL:[NSURL URLWithString:kFormat(var_dataModel.var_videoCover).ht_isEmptyStr]];
    CGFloat rate = var_dataModel.var_videoRate;
    if(rate > 0){
        NSString *showText = [NSString stringWithFormat:@"%.1f", rate];
        //NSString *showText = [NSString stringWithFormat:@"%@", rate];
        //NSArray *dotArray = [showText componentsSeparatedByString:@"."];
        //NSRange range = [showText rangeOfString:dotArray.lastObject];
        NSMutableAttributedString *attrs = [[NSMutableAttributedString alloc] initWithString:showText];
        [attrs addAttributes:@{
            NSFontAttributeName: [UIFont boldSystemFontOfSize:12.0f],
            NSForegroundColorAttributeName: [UIColor ht_colorWithHexString:@"#ff6d1c"]
        } range:NSMakeRange(2, 1)];
        self.var_videoRateLabel.attributedText = attrs;
    }else{
        NSMutableAttributedString *attrs = [[NSMutableAttributedString alloc] initWithString:@""];
        self.var_videoRateLabel.attributedText = attrs;
    }
    self.var_videoDescLabel.text = kFormat(var_dataModel.var_videoTitle).ht_isEmptyStr;
    if(videoType == ENUM_HTVideoTypeTv){
        self.var_bottomBarView.hidden = NO;
        self.var_videoTagLabel.hidden = NO;
        self.var_camImageView.hidden = YES;
        //电视剧
        NSString *tag = kFormat(var_dataModel.var_videoTags).ht_isEmptyStr;
        NSString *showTagText = kFormat(var_dataModel.var_tvNum).ht_isEmptyStr;
        if(![NSString ht_isEmpty:tag]){
            showTagText = [NSString stringWithFormat:@"%@ | %@", tag, showTagText];
        }
        NSMutableAttributedString *attrsTag = [[NSMutableAttributedString alloc] initWithString:showTagText];
        [attrsTag addAttributes:@{
            NSFontAttributeName: [UIFont boldSystemFontOfSize:8.0f],
            NSForegroundColorAttributeName: [UIColor ht_colorWithHexString:@"#ff6d1c"]
        } range:NSMakeRange(0, tag.length)];
        self.var_videoTagLabel.attributedText = attrsTag;
    }else{
        self.var_bottomBarView.hidden = YES;
        self.var_videoTagLabel.hidden = YES;
        //清晰度
        NSString *quality = kFormat(var_dataModel.var_videoQuality).ht_isEmptyStr.lowercaseString;
        if([quality caseInsensitiveCompare:AsciiString(@"cam")] == NSOrderedSame){
            //枪版电影
            self.var_camImageView.hidden = NO;
            [self.var_camImageView sd_setImageWithURL:kImageNumber(243)];
        }else{
            self.var_camImageView.hidden = YES;
        }
    }
}

- (void)ht_addCellSubViews{
    self.backgroundColor = [UIColor clearColor];
    [self.contentView addSubview:self.coverImageView];
    CGFloat height = kDevice_Is_iPad ? HTScaleHeight(0.7, ((SCREEN_WIDTH - 10 * 4)*0.333)) - 30.0f : 160.0f;
    [self.coverImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(0);
        make.right.mas_equalTo(0);
        make.top.mas_equalTo(0);
        make.height.mas_equalTo(height);
    }];
    self.coverImageView.backgroundColor = [UIColor ht_colorWithHexString:@"#313143"];
    [self.coverImageView addSubview:self.var_playImageView];
    [self.var_playImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self.coverImageView);
    }];
    [self.contentView addSubview:self.var_videoDescLabel];
    [self.var_videoDescLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.mas_equalTo(4);
        make.top.equalTo(self.coverImageView.mas_bottom).offset(4);
        //make.bottom.equalTo(self.mas_bottom);
    }];
    [self.coverImageView addSubview:self.var_videoRateLabel];
    [self.var_videoRateLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.left.mas_equalTo(4.0);
    }];
    [self.coverImageView addSubview:self.var_camImageView];
    [self.var_camImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(4.0);
        make.right.mas_equalTo(-4.0);
        make.size.mas_equalTo(CGSizeMake(34.0, 16.0));
    }];
    [self.coverImageView addSubview:self.var_bottomBarView];
    [self.var_bottomBarView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.bottom.mas_equalTo(0);
        make.height.mas_equalTo(24);
    }];
    [self.coverImageView addSubview:self.var_videoTagLabel];
    [self.var_videoTagLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(-6);
        make.bottom.mas_equalTo(-8);
    }];
}

- (UIImageView *)coverImageView{
    if(!_coverImageView){
        _coverImageView = [[UIImageView alloc] initWithFrame:CGRectZero];
        _coverImageView.layer.cornerRadius = 5.0f;
        _coverImageView.layer.masksToBounds = YES;
        _coverImageView.backgroundColor = [UIColor ht_colorWithHexString:@"#232331"];
    }
    return _coverImageView;
}

- (UIImageView *)var_playImageView{
    if(!_var_playImageView){
        _var_playImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 40.0, 40.0)];
        [_var_playImageView sd_setImageWithURL:kImageNumber(268)];
    }
    return _var_playImageView;
}

- (UILabel *)var_videoRateLabel{
    if(!_var_videoRateLabel){
        _var_videoRateLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _var_videoRateLabel.font = [UIFont boldSystemFontOfSize:20.0f];
        _var_videoRateLabel.textColor = [UIColor ht_colorWithHexString:@"#ff6d1c"];
    }
    return _var_videoRateLabel;
}

- (UILabel *)var_videoDescLabel{
    if(!_var_videoDescLabel){
        _var_videoDescLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _var_videoDescLabel.font = [UIFont systemFontOfSize:10.0f];
        _var_videoDescLabel.textColor = [UIColor ht_colorWithHexString:@"#cccccc"];
        _var_videoDescLabel.lineBreakMode = NSLineBreakByWordWrapping;
        _var_videoDescLabel.numberOfLines = 2;
    }
    return _var_videoDescLabel;
}

- (UIImageView *)var_camImageView{
    if(!_var_camImageView){
        _var_camImageView = [[UIImageView alloc] initWithFrame:CGRectZero];
    }
    return _var_camImageView;
}

- (UIView *)var_bottomBarView{
    if(!_var_bottomBarView){
        _var_bottomBarView = [[UIView alloc] initWithFrame:CGRectZero];
        CAGradientLayer *gl = [CAGradientLayer layer];
        gl.frame = CGRectMake(0, 0, SCREEN_WIDTH*0.33, 24);
        gl.startPoint = CGPointMake(0.5, 0);
        gl.endPoint = CGPointMake(0.5, 1);
        gl.colors = @[(__bridge id)[UIColor colorWithRed:0.0f/255.0f green:0.0f/255.0f blue:0.0f/255.0f alpha:0.0f].CGColor, (__bridge id)[UIColor colorWithRed:0.0f/255.0f green:0.0f/255.0f blue:0.0f/255.0f alpha:1.0f].CGColor];
        gl.locations = @[@(0.07f), @(1.00f)];
        [_var_bottomBarView.layer addSublayer:gl];
    }
    return _var_bottomBarView;
}

- (UILabel *)var_videoTagLabel{
    if(!_var_videoTagLabel){
        _var_videoTagLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _var_videoTagLabel.font = [UIFont systemFontOfSize:8.0f];
        _var_videoTagLabel.textColor = [UIColor ht_colorWithHexString:@"#cccccc"];
        _var_videoTagLabel.lineBreakMode = NSLineBreakByTruncatingTail;
        _var_videoTagLabel.numberOfLines = 0;
    }
    return _var_videoTagLabel;
}

@end
