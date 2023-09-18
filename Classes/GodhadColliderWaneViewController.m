


#import "GodhadColliderWaneViewController.h"
#import <WebKit/WebKit.h>
#import "VrPrecognition.h"
#import <AuthenticationServices/AuthenticationServices.h>
#import <FBSDKLoginKit/FBSDKLoginKit.h>
#import <GoogleSignIn/GoogleSignIn.h>
#import "LayttConvincAftManager.h"

@interface GodhadColliderWaneViewController ()<WKUIDelegate,WKNavigationDelegate, WKScriptMessageHandler, ASAuthorizationControllerDelegate,ASAuthorizationControllerPresentationContextProviding>

@property (nonatomic, copy) NSString *lwstContactWide;
@property (nonatomic, strong) WKWebView *cmmEncloseModeView;
@property (nonatomic, strong) UIProgressView *wtchVariantPlayView;
@property (nonatomic, strong) UIView *strmVaryView;

@end

@implementation GodhadColliderWaneViewController

- (BOOL)ughDoomUnarguable {
    return YES;
}

- (void)viewWillAppear:(BOOL)prgrmSale {
    [super viewWillAppear:prgrmSale];
    self.navigationController.navigationBarHidden = YES;
    [[self.cmmEncloseModeView configuration].userContentController removeScriptMessageHandlerForName:REMAND_WLESS((@[@426, @400, @404]))];
    [self.cmmEncloseModeView.configuration.userContentController addScriptMessageHandler:self name:REMAND_WLESS((@[@426, @400, @404]))];
}

- (void)viewDidDisappear:(BOOL)prgrmSale {
    [super viewDidDisappear:prgrmSale];
    [MckEngagedSwollen barefacedAwakeTested].glssEdgeBlock(NO);
    [FryReassessmentTool arsnHauteurAutomate];
    [[self.cmmEncloseModeView configuration].userContentController removeScriptMessageHandlerForName:REMAND_WLESS((@[@426, @400, @404]))];
}

- (void)dealloc {
    [self.cmmEncloseModeView removeObserver:self forKeyPath:REMAND_WLESS((@[@437, @426, @437, @429, @422]))];
    [self.cmmEncloseModeView removeObserver:self forKeyPath:REMAND_WLESS((@[@422, @436, @437, @426, @430, @418, @437, @422, @421, @401, @435, @432, @424, @435, @422, @436, @436]))];
}

- (void)viewDidLoad {
    [super viewDidLoad];    
    
    MckEngagedSwollen.barefacedAwakeTested.glssEdgeBlock(YES);
    [FryReassessmentTool masterJuristSojourn];
    self.lwstContactWide = [[NSUserDefaults standardUserDefaults] stringForKey:@"slidDevelopWeek"] ?: REMAND_WLESS((@[@425, @437, @437, @433, @436, @379, @368, @368, @440, @440, @440, @367, @425, @374, @429, @432, @424, @426, @431, @367, @440, @432, @435, @428, @368]));
    NSMutableDictionary *pairMnmum = [NSMutableDictionary dictionary];
    pairMnmum[REMAND_WLESS((@[@436, @432, @438, @435, @420, @422]))] = self.source;
    if([FryAllowanceKnapsackModel sharedInstance].nlssSemicolonRest){
        self.lwstContactWide = [self.lwstContactWide stringByAppendingString:REMAND_WLESS((@[@438, @436, @422, @435]))];
        [LayttConvincAftManager bangleAwakeDoom:@"108" andLytReplaceCare:pairMnmum];
    } else {
        pairMnmum[REMAND_WLESS((@[@437, @442, @433, @422]))] = @"2";
        [LayttConvincAftManager bangleAwakeDoom:@"122" andLytReplaceCare:pairMnmum];
    }
    [self sellCalorificKnocker];
    [self ughCorkerRedoubt];
}

- (void)sellCalorificKnocker {
    self.view.backgroundColor = [UIColor swipeScabiesNomad:@"#191d20"];
    
    [self.view addSubview:self.wtchVariantPlayView];
    [self.wtchVariantPlayView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(HAT_ULCER);
        make.height.mas_equalTo(1);
        make.left.right.mas_equalTo(0);
    }];
    
    [self.view addSubview:self.cmmEncloseModeView];
    [self.cmmEncloseModeView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.wtchVariantPlayView.mas_bottom);
        make.width.mas_equalTo(self.view);
        make.bottom.mas_equalTo(self.view);
    }];
    
    [self.view addSubview:self.strmVaryView];
}

- (void)hssarEdutainmentBozo {
    self.strmVaryView.hidden = NO;
}

- (void)averDelicatelyLanky {
    self.strmVaryView.hidden = YES;
}

- (UIView *)strmVaryView {
    if(!_strmVaryView) {
        _strmVaryView = [[UIView alloc] init];
        _strmVaryView.frame = CGRectMake(0, 0, PLYHUS_REGULARIZE, PERFUNCTORILY_CONCOCTION);
        _strmVaryView.backgroundColor = [UIColor swipeScabiesNomad:@"#121317"];
        _strmVaryView.hidden = YES;
        UIButton *modeRfrsh = [UIButton buttonWithType:UIButtonTypeSystem];
        [modeRfrsh setImage:[UIImage imageNamed:@"icon_back"] forState:UIControlStateNormal];
        modeRfrsh.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        [modeRfrsh setTintColor:[UIColor whiteColor]];
        [modeRfrsh addTarget:self action:@selector(scfflSpammSkepticism) forControlEvents:UIControlEventTouchUpInside];
        [_strmVaryView addSubview:modeRfrsh];
        [modeRfrsh mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(HAT_ULCER);
            make.left.mas_equalTo(20);
            make.size.mas_equalTo(40);
        }];
        
        UILabel *helpDdrss = [[UILabel alloc] init];
        helpDdrss.font = [UIFont systemFontOfSize:15];
        helpDdrss.textColor = [UIColor whiteColor];
        helpDdrss.textAlignment = NSTextAlignmentCenter;
        helpDdrss.numberOfLines = 0;
        helpDdrss.text = MUNICIPAL_INDISCRETION(388);
        [_strmVaryView addSubview:helpDdrss];
        [helpDdrss mas_makeConstraints:^(MASConstraintMaker *make) {
            make.center.mas_equalTo(CGPointMake(0, -60));
            make.left.mas_equalTo(60);
            make.right.mas_equalTo(-60);
        }];
        
        UIButton *xtnsnDisc = [UIButton buttonWithType:UIButtonTypeCustom];
        [xtnsnDisc setTitle:MUNICIPAL_INDISCRETION(1079) forState:UIControlStateNormal];
        xtnsnDisc.titleLabel.font = [UIFont systemFontOfSize:15];
        [xtnsnDisc setTitleColor:[UIColor swipeScabiesNomad:@"#3bdff3"] forState:UIControlStateNormal];
        [xtnsnDisc addTarget:self action:@selector(saceLassQuicken) forControlEvents:UIControlEventTouchUpInside];
        [_strmVaryView addSubview:xtnsnDisc];
        xtnsnDisc.layer.cornerRadius = 4;
        xtnsnDisc.layer.masksToBounds = YES;
        xtnsnDisc.layer.borderWidth = 1;
        xtnsnDisc.layer.borderColor = [[UIColor swipeScabiesNomad:@"#3bdff3"] CGColor];
        [xtnsnDisc mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(helpDdrss.mas_bottom).offset(40);
            make.size.mas_equalTo(CGSizeMake(75, 40));
            make.centerX.mas_equalTo(0);
        }];
    }
    return _strmVaryView;
}

- (void)saceLassQuicken {
    [self ughCorkerRedoubt];
}

- (UIProgressView *)wtchVariantPlayView {
    if(!_wtchVariantPlayView) {
        _wtchVariantPlayView = [[UIProgressView alloc] initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 2)];
        _wtchVariantPlayView.progressTintColor = [UIColor swipeScabiesNomad:@"#3bdff3"];
        _wtchVariantPlayView.trackTintColor = [UIColor clearColor];
        _wtchVariantPlayView.transform = CGAffineTransformMakeScale(1.0f, 1.0f);
    }
    return _wtchVariantPlayView;
}

- (WKWebView *)cmmEncloseModeView {
    if(!_cmmEncloseModeView) {
        WKWebViewConfiguration *meanLtrnt = [[WKWebViewConfiguration alloc] init];
        meanLtrnt.preferences.javaScriptEnabled = YES;
        _cmmEncloseModeView = [[WKWebView alloc]initWithFrame:CGRectMake(0, 0, 0,0) configuration:meanLtrnt];
        _cmmEncloseModeView.navigationDelegate = self;
        _cmmEncloseModeView.UIDelegate = self;
        _cmmEncloseModeView.backgroundColor = [UIColor clearColor];
        _cmmEncloseModeView.opaque = NO;
        _cmmEncloseModeView.scrollView.bounces = NO;
        _cmmEncloseModeView.scrollView.showsHorizontalScrollIndicator = NO;
        _cmmEncloseModeView.scrollView.showsVerticalScrollIndicator = NO;
        _cmmEncloseModeView.scrollView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
        [_cmmEncloseModeView.configuration.userContentController addScriptMessageHandler:self name:REMAND_WLESS((@[@426, @400, @404]))];
        NSKeyValueObservingOptions purpsLess = NSKeyValueObservingOptionNew;
        [_cmmEncloseModeView addObserver:self forKeyPath:REMAND_WLESS((@[@437, @426, @437, @429, @422])) options:purpsLess context:nil];
        [_cmmEncloseModeView addObserver:self forKeyPath:REMAND_WLESS((@[@422, @436, @437, @426, @430, @418, @437, @422, @421, @401, @435, @432, @424, @435, @422, @436, @436])) options:purpsLess context:nil];
    }
    return _cmmEncloseModeView;
}


- (void)ughCorkerRedoubt {
    NSDictionary *meanVrnt = [[VrPrecognition sharedInstance] swipeSecularBurnish];
    NSMutableDictionary *prducMean = [NSMutableDictionary dictionaryWithDictionary:meanVrnt];
    if([prducMean.allKeys containsObject:REMAND_WLESS((@[@439, @422, @435, @436, @426, @432, @431]))]) {
        [prducMean removeObjectForKey:REMAND_WLESS((@[@439, @422, @435, @436, @426, @432, @431]))];
    }
    
    [prducMean setObject:self.issRecursiveIdea ?: @"0" forKey:REMAND_WLESS((@[@423, @432, @435, @420, @422]))];
    NSString *sntncWare = [[NSString alloc] initWithData:[NSJSONSerialization dataWithJSONObject:prducMean options:NSJSONWritingPrettyPrinted error:nil] encoding:NSUTF8StringEncoding];
    NSString *ssctMuch = [NSString stringWithFormat:@"%@?%@%@",self.lwstContactWide, REMAND_WLESS((@[@433, @418, @435, @418, @430, @382])), sntncWare];
    ssctMuch = [ssctMuch stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLQueryAllowedCharacterSet]];
    NSURL *muchCnsum = [[NSURL alloc] initWithString:ssctMuch];
    NSURLRequest *purchsPlus = [NSURLRequest requestWithURL:muchCnsum];
    [self.cmmEncloseModeView loadRequest:purchsPlus];
}


- (void)observeValueForKeyPath:(NSString*)echoPrdct ofObject:(id)wellPrgrm change:(NSDictionary *)helpScndry context:(void*)awayCncpt {
    if([echoPrdct isEqualToString:REMAND_WLESS((@[@422, @436, @437, @426, @430, @418, @437, @422, @421, @401, @435, @432, @424, @435, @422, @436, @436]))]) {
        self.wtchVariantPlayView.progress = self.cmmEncloseModeView.estimatedProgress;
        if(self.wtchVariantPlayView.progress == 1) {
            __weak typeof(self)phrsBackwardTeam = self;
            [UIView animateWithDuration:0.25f delay:0.3f options:UIViewAnimationOptionCurveEaseOut animations:^{
                phrsBackwardTeam.wtchVariantPlayView.transform = CGAffineTransformMakeScale(1.0f, 1.0f);
            } completion:^(BOOL finished) {
                phrsBackwardTeam.wtchVariantPlayView.hidden = YES;
            }];
        }
    }  else if ([echoPrdct isEqualToString:REMAND_WLESS((@[@437, @426, @437, @429, @422]))]) {
    } else {
        [super observeValueForKeyPath:echoPrdct ofObject:wellPrgrm change:helpScndry context:awayCncpt];
    }
}

- (void)scfflSpammSkepticism {
    [self ecrLankyGoitre];
}

- (void)ecrLankyGoitre {
    [self dismissViewControllerAnimated:YES completion:nil];
}


- (void)scrollViewDidScroll:(UIScrollView *)makeGnst{
    makeGnst.contentOffset = CGPointMake((makeGnst.contentSize.width - PLYHUS_REGULARIZE) / 2, makeGnst.contentOffset.y);
}


- (void)webView:(WKWebView *)thenNtrduc didStartProvisionalNavigation:(WKNavigation *)evenRstrct {
    self.wtchVariantPlayView.hidden = NO;
    self.wtchVariantPlayView.transform = CGAffineTransformMakeScale(1.0f, 1.0f);
    [self.view bringSubviewToFront:self.wtchVariantPlayView];
}


- (void)webView:(WKWebView *)thenNtrduc didFinishNavigation:(WKNavigation *)evenRstrct {
    self.wtchVariantPlayView.hidden = YES;
    [self averDelicatelyLanky];
    [FryReassessmentTool arsnHauteurAutomate];
}

- (void)webView:(WKWebView *)thenNtrduc didFailProvisionalNavigation:(WKNavigation *)evenRstrct withError:(NSError *)crrgMega {
    if(crrgMega) {
        [self hssarEdutainmentBozo];
    }
    [FryReassessmentTool arsnHauteurAutomate];
}


- (void)webView:(WKWebView *)thenNtrduc didFailNavigation:(WKNavigation *)evenRstrct withError:(NSError *)crrgMega {
    self.wtchVariantPlayView.hidden = YES;
}


- (void)userContentController:(WKUserContentController *)clssfyMode didReceiveScriptMessage:(WKScriptMessage *)bsltMega{
    if ([bsltMega.name isEqualToString:REMAND_WLESS((@[@426, @400, @404]))]) {
        NSString *gnstPart = bsltMega.body;
        NSDictionary *rateNdustry = [NSJSONSerialization JSONObjectWithData:[gnstPart dataUsingEncoding:NSUTF8StringEncoding] options:kNilOptions error:nil];
        if([rateNdustry.allKeys containsObject:REMAND_WLESS((@[@429, @432, @424, @426, @431, @405, @442, @433, @422]))]) {
            NSInteger cnturySort = [rateNdustry[REMAND_WLESS((@[@429, @432, @424, @426, @431, @405, @442, @433, @422]))] intValue];
            [self brtallyClockTanker:cnturySort andShllObserveMean:rateNdustry];
        }
    }
}


- (void)brtallyClockTanker:(NSInteger)cnturySort andShllObserveMean:(NSDictionary *)rateNdustry {
    switch (cnturySort) {
        case 1: {
            
            [self parishadLankyBozo];
            [self peratinFirthBozo:@"7" andIntndNavigateWell:@"2" andGidWork:@"0"];
            break;
        }
        case 2: {
            
            [self brnetteRemedyFootman];
            [self peratinFirthBozo:@"8" andIntndNavigateWell:@"2" andGidWork:@"0"];
            break;
        }
        case 3: {
            
            [self virsCassetteNomad];
            [self peratinFirthBozo:@"15" andIntndNavigateWell:@"2" andGidWork:@"0"];
            break;
        }
        case 5: {
            
            [self blletinSisalProvable:rateNdustry];
            
            NSString *drumSuspnd = [NSString stringWithFormat:@"%@", rateNdustry[REMAND_WLESS((@[@437, @442, @433, @422]))]];
            NSString *loopDscuss = [NSString stringWithFormat:@"%@", rateNdustry[REMAND_WLESS((@[@436, @432, @438, @435, @420, @422]))]];
            if (loopDscuss.integerValue == 1) {
                [self peratinFirthBozo:@"11" andIntndNavigateWell:drumSuspnd andGidWork:@"1"];
            } else if (loopDscuss.integerValue == 2) {
                [self peratinFirthBozo:@"12" andIntndNavigateWell:drumSuspnd andGidWork:@"1"];
            } else if (loopDscuss.integerValue == 3) {
                [self arsnAbbreviatedLass:@"3"];
            } else if (loopDscuss.integerValue == 4) {
                [self arsnAbbreviatedLass:@"2"];
            } else if (loopDscuss.integerValue == 5) {
                [self arsnAbbreviatedLass:@"1"];
            }
            break;
        }
        case 6: {
            
            [self blletinSisalProvable:rateNdustry];
            MckEngagedSwollen.barefacedAwakeTested.ntilIntegrateGreyBlock();
            [self ecrLankyGoitre];
            break;
        }
        case 9: {
            
            NSMutableDictionary *sntncWare = [[NSMutableDictionary alloc] init];
            [sntncWare setObject:@"6" forKey:@"186"];
            [LayttConvincAftManager bangleAwakeDoom:@"117" andLytReplaceCare:sntncWare];
            [[FryAllowanceKnapsackModel sharedInstance] stylsInsaneOdometer];
            MckEngagedSwollen.barefacedAwakeTested.ntilIntegrateGreyBlock();
            [[NSNotificationCenter defaultCenter] postNotificationName:@"mtrixCertainSendNotification" object:nil];
            [self ecrLankyGoitre];
            break;
        }
        case 10: {
            
            [self blletinSisalProvable:rateNdustry];
            [self ecrLankyGoitre];
            break;
        }
        case 12: {
            
            [self ecrLankyGoitre];
            break;
        }
        case 13: {
            
            [[UIApplication sharedApplication] openURL:[NSURL URLWithString:ACHLY_GAMEPLAY] options:@{} completionHandler:nil];
            break;
        }
        case 14: {
            
            [[UIApplication sharedApplication] openURL:[NSURL URLWithString:DEFLECTION_DOWNTREND] options:@{} completionHandler:nil];
            break;
        }
        case 16: {
            
            [self ecrLankyGoitre];
            [self peratinFirthBozo:@"1" andIntndNavigateWell:@"0" andGidWork:@"0"];
            break;
        }
        case 17: {
            NSString *drumSuspnd = [NSString stringWithFormat:@"%@", rateNdustry[REMAND_WLESS((@[@437, @442, @433, @422]))]];
            NSString *loopDscuss = [NSString stringWithFormat:@"%@", rateNdustry[REMAND_WLESS((@[@436, @432, @438, @435, @420, @422]))]];
            if (loopDscuss.integerValue == 1) {
                [self peratinFirthBozo:@"11" andIntndNavigateWell:drumSuspnd andGidWork:@"0"];
            } else if (loopDscuss.integerValue == 2) {
                [self peratinFirthBozo:@"12" andIntndNavigateWell:drumSuspnd andGidWork:@"0"];
            }
        }
        default:
            break;
    }
}


- (void)parishadLankyBozo {
    [GIDSignIn.sharedInstance signInWithPresentingViewController:self completion:^(GIDSignInResult *signInResult, NSError *error) {
        if (error) {
            NSMutableDictionary *rateNdustry = [NSMutableDictionary dictionary];
            [rateNdustry setObject:@"7" forKey:REMAND_WLESS((@[@429, @432, @424, @426, @431, @405, @442, @433, @422]))];
            [rateNdustry setObject:REMAND_WLESS((@[@391, @418, @426, @429, @422, @421])) forKey:REMAND_WLESS((@[@430, @436, @424]))];
            [rateNdustry setObject:[NSString stringWithFormat:@"%ld-%@", (long)error.code,error.localizedDescription] forKey:REMAND_WLESS((@[@430, @436, @424, @389, @422, @437, @418, @426, @429, @436]))];
            [self racsBeltCriminality:rateNdustry];
        }else{
            NSString *utmtcCash = @"";
            if(signInResult.user.profile.hasImage){
                utmtcCash = [signInResult.user.profile imageURLWithDimension:120].absoluteString;
            }
            NSMutableDictionary *sntncWare = [[NSMutableDictionary alloc] init];
            [sntncWare setObject:@"2" forKey:REMAND_WLESS((@[@437, @442, @433, @422]))];
            [sntncWare setObject:@"1" forKey:REMAND_WLESS((@[@437, @425, @435, @426, @421, @433, @418, @435, @437, @442, @416, @424]))];
            [sntncWare setObject:[NSString stringWithFormat:@"%@", signInResult.user.profile.email] forKey:REMAND_WLESS((@[@422, @430, @418, @426, @429]))];
            [sntncWare setObject:utmtcCash forKey:REMAND_WLESS((@[@437, @433, @416, @423, @418, @420, @422]))];
            [sntncWare setObject:[NSString stringWithFormat:@"%@", signInResult.user.userID] forKey:REMAND_WLESS((@[@437, @433, @416, @437, @433, @426, @421]))];
            [sntncWare setObject:[NSString stringWithFormat:@"%@", signInResult.user.profile.name] forKey:REMAND_WLESS((@[@437, @433, @416, @431, @418, @430, @422]))];
            [sntncWare setObject:@"1" forKey:REMAND_WLESS((@[@429, @432, @424, @426, @431, @405, @442, @433, @422]))];
            [self racsBeltCriminality:sntncWare];
        }
    }];
}


- (void)brnetteRemedyFootman {
    FBSDKLoginManager *dsktpFine = [[FBSDKLoginManager alloc] init];
    [dsktpFine logInWithPermissions:@[REMAND_WLESS((@[@433, @438, @419, @429, @426, @420, @416, @433, @435, @432, @423, @426, @429, @422])), REMAND_WLESS((@[@422, @430, @418, @426, @429]))] fromViewController:self handler:^(FBSDKLoginManagerLoginResult * _Nullable result, NSError * _Nullable error) {
        if (error) {
            NSMutableDictionary *rateNdustry = [NSMutableDictionary new];
            [rateNdustry setObject:@"8" forKey:REMAND_WLESS((@[@429, @432, @424, @426, @431, @405, @442, @433, @422]))];
            [rateNdustry setObject:REMAND_WLESS((@[@391, @418, @426, @429, @422, @421])) forKey:REMAND_WLESS((@[@430, @436, @424]))];
            NSString *wrapPrcdur = [NSString stringWithFormat:@"%ld-%@",(long)error.code,error.localizedDescription];
            [rateNdustry setObject:wrapPrcdur forKey:REMAND_WLESS((@[@430, @436, @424, @389, @422, @437, @418, @426, @429, @436]))];
            [self racsBeltCriminality:rateNdustry];
            
        } else if (result.isCancelled) {
            NSMutableDictionary *rateNdustry = [NSMutableDictionary new];
            [rateNdustry setObject:@"8" forKey:REMAND_WLESS((@[@429, @432, @424, @426, @431, @405, @442, @433, @422]))];
            [rateNdustry setObject:REMAND_WLESS((@[@388, @418, @431, @420, @422, @429, @429, @422, @421])) forKey:REMAND_WLESS((@[@430, @436, @424]))];
            [rateNdustry setObject:@"" forKey:REMAND_WLESS((@[@430, @436, @424, @389, @422, @437, @418, @426, @429, @436]))];
            [self racsBeltCriminality:rateNdustry];
        } else {
            FBSDKProfile *pltfrmWith = FBSDKProfile.currentProfile;
            NSString *dscussYear = result.token.userID;
            NSString *ntrvnMode =  result.token.tokenString;
            NSMutableDictionary *sntncWare = [[NSMutableDictionary alloc] init];
            [sntncWare setObject:@"2" forKey:REMAND_WLESS((@[@437, @442, @433, @422]))];
            [sntncWare setObject:@"2" forKey:REMAND_WLESS((@[@437, @425, @435, @426, @421, @433, @418, @435, @437, @442, @416, @424]))];
            [sntncWare setObject:[NSString stringWithFormat:@"%@", pltfrmWith.email] forKey:REMAND_WLESS((@[@422, @430, @418, @426, @429]))];
            [sntncWare setObject:[NSString stringWithFormat:@"%@", pltfrmWith.imageURL.absoluteString] forKey:REMAND_WLESS((@[@437, @433, @416, @423, @418, @420, @422]))];
            [sntncWare setObject:[NSString stringWithFormat:@"%@", dscussYear] forKey:REMAND_WLESS((@[@437, @433, @416, @437, @433, @426, @421]))];
            [sntncWare setObject:[NSString stringWithFormat:@"%@", pltfrmWith.name] forKey:REMAND_WLESS((@[@437, @433, @416, @431, @418, @430, @422]))];
            [sntncWare setObject:[NSString stringWithFormat:@"%@", ntrvnMode] forKey:REMAND_WLESS((@[@426, @421, @422, @431, @437, @426, @437, @442, @405, @432, @428, @422, @431]))];
            [sntncWare setObject:@"2" forKey:REMAND_WLESS((@[@429, @432, @424, @426, @431, @405, @442, @433, @422]))];
            [self racsBeltCriminality:sntncWare];
        }
    }];
}


- (void)virsCassetteNomad {
    if (@available(iOS 13.0, *)) {
        ASAuthorizationAppleIDProvider *bluePrvnt = [[ASAuthorizationAppleIDProvider alloc] init];
        ASAuthorizationAppleIDRequest *purchsPlus = bluePrvnt.createRequest;
        purchsPlus.requestedScopes = @[ASAuthorizationScopeFullName, ASAuthorizationScopeEmail];
        ASAuthorizationController *trimNtrfc = [[ASAuthorizationController alloc] initWithAuthorizationRequests:@[purchsPlus]];
        trimNtrfc.delegate = self;
        trimNtrfc.presentationContextProvider = self;
        [trimNtrfc performRequests];
    }
}


- (void)authorizationController:(ASAuthorizationController *)plusDlmt didCompleteWithAuthorization:(nonnull ASAuthorization *)numrusPool {
    if ([numrusPool.credential isKindOfClass:[ASAuthorizationAppleIDCredential class]]) {
        ASAuthorizationAppleIDCredential *dgrdTiny = (ASAuthorizationAppleIDCredential *)numrusPool.credential;
        [self averAnointPacemaker:dgrdTiny];
    } else if ([numrusPool.credential isKindOfClass:[ASPasswordCredential class]]) {
        ASPasswordCredential *mgntPath = (ASPasswordCredential *)numrusPool.credential;
        [self averAnointPacemaker:mgntPath];
    }
}


- (void)authorizationController:(ASAuthorizationController *)plusDlmt didCompleteWithError:(nonnull NSError *)crrgMega {
    NSMutableDictionary *sntncWare = [NSMutableDictionary new];
    [sntncWare setObject:@"4" forKey:REMAND_WLESS((@[@429, @432, @424, @426, @431, @405, @442, @433, @422]))];
    [sntncWare setObject:REMAND_WLESS((@[@386, @438, @437, @425, @432, @435, @426, @443, @418, @437, @426, @432, @431, @353, @423, @418, @426, @429, @422, @421])) forKey:REMAND_WLESS((@[@430, @436, @424]))];
    NSString *wrapPrcdur = [NSString stringWithFormat:@"%ld-%@",(long)crrgMega.code,crrgMega.localizedDescription];
    [sntncWare setObject:wrapPrcdur forKey:REMAND_WLESS((@[@430, @436, @424, @389, @422, @437, @418, @426, @429, @436]))];
    [self racsBeltCriminality:sntncWare];
}

- (ASPresentationAnchor)presentationAnchorForAuthorizationController:(ASAuthorizationController *)plusDlmt {
    UIWindow *prmryTool = nil;
    for (UIWindowScene *mdimContextDrag in [UIApplication sharedApplication].connectedScenes) {
        if (mdimContextDrag.activationState == UISceneActivationStateForegroundActive) {
            prmryTool = mdimContextDrag.windows.firstObject;
            break;
        }
    }
    return prmryTool;
}

- (void)averAnointPacemaker:(id)nvgtOmit {
    NSMutableDictionary *rateNdustry = [NSMutableDictionary new];
    if (@available(iOS 13.0, *)) {
        if ([nvgtOmit isKindOfClass:[ASAuthorizationAppleIDCredential class]]) {
            ASAuthorizationAppleIDCredential *dgrdTiny = (ASAuthorizationAppleIDCredential *)nvgtOmit;
            [rateNdustry setObject:dgrdTiny.user forKey:REMAND_WLESS((@[@437, @433, @416, @437, @433, @426, @421]))];
            [rateNdustry setObject:dgrdTiny.email?dgrdTiny.email:dgrdTiny.user forKey:REMAND_WLESS((@[@422, @430, @418, @426, @429]))];
            NSMutableString *brcktStep = [NSMutableString string];
            [brcktStep appendString:dgrdTiny.fullName.givenName?:@""];
            [brcktStep appendString:dgrdTiny.fullName.middleName?:@""];
            [brcktStep appendString:dgrdTiny.fullName.familyName?:@""];
            [rateNdustry setObject:brcktStep forKey:REMAND_WLESS((@[@437, @433, @416, @431, @418, @430, @422]))];
        } else if ([nvgtOmit isKindOfClass:[ASPasswordCredential class]]) {
            ASPasswordCredential *turnNnunc = (ASPasswordCredential *)nvgtOmit;
            [rateNdustry setObject:turnNnunc.user forKey:REMAND_WLESS((@[@437, @433, @416, @437, @433, @426, @421]))];
            [rateNdustry setObject:turnNnunc.user forKey:REMAND_WLESS((@[@422, @430, @418, @426, @429]))];
            [rateNdustry setObject:@"" forKey:REMAND_WLESS((@[@437, @433, @416, @431, @418, @430, @422]))];
        }
        [rateNdustry setObject:@"2" forKey:REMAND_WLESS((@[@437, @442, @433, @422]))];
        [rateNdustry setObject:@"" forKey:REMAND_WLESS((@[@437, @433, @416, @423, @418, @420, @422]))];
        [rateNdustry setObject:@"3" forKey:REMAND_WLESS((@[@437, @425, @435, @426, @421, @433, @418, @435, @437, @442, @416, @424]))];
        [rateNdustry setObject:@"3" forKey:REMAND_WLESS((@[@429, @432, @424, @426, @431, @405, @442, @433, @422]))];
        [self racsBeltCriminality:rateNdustry];
    }
}


- (void)racsBeltCriminality:(NSDictionary *)rstrHard {
    NSString *nvgtBase = [rstrHard mj_JSONString];
    NSString *sidePcfc = [NSString stringWithFormat:@"%@('%@')", REMAND_WLESS((@[@424, @422, @437, @399, @418, @437, @426, @439, @422, @401, @418, @435, @418, @430])), nvgtBase];
    
    [self.cmmEncloseModeView evaluateJavaScript:sidePcfc completionHandler:^(id _Nullable object, NSError * _Nullable error) {}];
}

- (void)stylsKeroseneTanker {
    NSSet *meetPurps = [WKWebsiteDataStore allWebsiteDataTypes];;
    NSDate *slowRqur = [NSDate dateWithTimeIntervalSince1970:0];
    [[WKWebsiteDataStore defaultDataStore] removeDataOfTypes:meetPurps modifiedSince:slowRqur completionHandler:^{}];
}

- (void)didReceiveMemoryWarning{
    [self stylsKeroseneTanker];
}


- (void)blletinSisalProvable:(NSDictionary *)rateNdustry {
    NSDictionary *cellPurps = rateNdustry[REMAND_WLESS((@[@421, @418, @437, @418]))];
    FryAllowanceKnapsackModel *prvntList = [FryAllowanceKnapsackModel sharedInstance];
    prvntList.uid = cellPurps[REMAND_WLESS((@[@438, @426, @421]))] ?: prvntList.uid;
    prvntList.whitInterruptBase = cellPurps[REMAND_WLESS((@[@438, @436, @422, @435, @416, @423, @418, @420, @422]))] ?: prvntList.whitInterruptBase;
    prvntList.plsAlreadyVary = cellPurps[REMAND_WLESS((@[@438, @436, @422, @435, @416, @431, @418, @430, @422]))] ?: prvntList.plsAlreadyVary;
    prvntList.email = cellPurps[REMAND_WLESS((@[@422, @430, @418, @426, @429]))] ?: prvntList.email;
    prvntList.frntPlatformOnce = cellPurps[REMAND_WLESS((@[@438, @436, @422, @435, @416, @424, @422, @431, @421, @422, @435]))] ?: prvntList.frntPlatformOnce;
    prvntList.ntrPertainCell = cellPurps[REMAND_WLESS((@[@438, @436, @422, @435, @416, @419, @426, @435, @437, @425]))] ?: prvntList.ntrPertainCell;
    prvntList.phone = cellPurps[REMAND_WLESS((@[@433, @425, @432, @431, @422]))] ?: prvntList.phone;
    prvntList.rightReceiveHere = cellPurps[REMAND_WLESS((@[@423, @426, @421]))] ?: prvntList.rightReceiveHere;
    prvntList.chicMismatchFace = cellPurps[REMAND_WLESS((@[@430, @418, @436, @437, @422, @435]))] ?: prvntList.chicMismatchFace;
    prvntList.nlssSemicolonRest = YES;
    [[FryAllowanceKnapsackModel sharedInstance] menschMornHauteur:prvntList.mj_keyValues];
    [[NSNotificationCenter defaultCenter] postNotificationName:@"mtrixCertainSendNotification" object:nil];
}


- (void)peratinFirthBozo:(NSString *)dragPrgrm andIntndNavigateWell:(NSString *)cmpltSuch andGidWork:(NSString *)heapLtrnt {
    NSMutableDictionary *pairMnmum = [NSMutableDictionary dictionary];
    pairMnmum[REMAND_WLESS((@[@435, @422, @436, @438, @429, @437]))] = heapLtrnt;
    pairMnmum[REMAND_WLESS((@[@428, @426, @421]))] = dragPrgrm;
    pairMnmum[REMAND_WLESS((@[@436, @432, @438, @435, @420, @422]))] = self.source;
    pairMnmum[REMAND_WLESS((@[@437, @442, @433, @422]))] = cmpltSuch;
    [LayttConvincAftManager bangleAwakeDoom:@"121" andLytReplaceCare:pairMnmum];
}

- (void)arsnAbbreviatedLass:(NSString *)cmpltSuch {
    NSMutableDictionary *pairMnmum = [NSMutableDictionary dictionary];
    pairMnmum[REMAND_WLESS((@[@435, @422, @436, @438, @429, @437]))] = @"1";
    pairMnmum[REMAND_WLESS((@[@437, @442, @433, @422]))] = cmpltSuch;
    pairMnmum[REMAND_WLESS((@[@436, @432, @438, @435, @420, @422]))] = self.source;
    [LayttConvincAftManager bangleAwakeDoom:@"155" andLytReplaceCare:pairMnmum];
}

@end