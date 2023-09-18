






#import "FryVisuallyInternetViewController.h"
#import "AssmComplicatedManager.h"
#import "BasqAbjectPrintedView.h"
#import "TrivialityHomecomManager.h"
#import <MJRefresh/MJRefresh.h>

@interface FryVisuallyInternetViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (nonatomic, strong) UIView *xistPreventCostView;
@property (nonatomic, assign) NSInteger tgglDisregardNullNum;
@property (nonatomic, assign) NSInteger ccpyRestoreBlueNum;
@end

@implementation FryVisuallyInternetViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = MUNICIPAL_INDISCRETION(511);
    self.dntDocumentToneArray = [NSMutableArray array];
    [self fiscallyKulfiSans];
}
- (void)viewWillAppear:(BOOL)prgrmSale {
    [super viewWillAppear:prgrmSale];
    [self.minsSqueezeWeekView.mj_header beginRefreshing];
}
- (void)fiscallyKulfiSans {
    self.xistPreventCostView = [[UIView alloc] init];
    [self.view addSubview:self.xistPreventCostView];
    [self.xistPreventCostView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.left.right.mas_equalTo(self.view);
        make.height.mas_equalTo(100);
    }];
    [self bangleBeltQuicker];
    
    self.minsSqueezeWeekView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStylePlain];
    [self.view addSubview:self.minsSqueezeWeekView];
    [self.minsSqueezeWeekView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.view.mas_safeAreaLayoutGuideTop);
        make.left.right.mas_equalTo(self.view);
        make.bottom.mas_equalTo(self.xistPreventCostView.mas_top).mas_offset(0);
    }];
    self.minsSqueezeWeekView.delegate = self;
    self.minsSqueezeWeekView.dataSource = self;
    self.minsSqueezeWeekView.backgroundColor = [UIColor clearColor];
    self.minsSqueezeWeekView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.minsSqueezeWeekView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
    [self.minsSqueezeWeekView registerClass:[OrganisationalPlunkTableViewCell class] forCellReuseIdentifier:@"rrwFontIdentifier"];
    
    MJRefreshNormalHeader *cruslCore = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(racsInsaneSkepticism)];
    cruslCore.automaticallyChangeAlpha = YES;
    cruslCore.lastUpdatedTimeLabel.hidden = YES;
    cruslCore.loadingView.activityIndicatorViewStyle = UIActivityIndicatorViewStyleMedium;
    self.minsSqueezeWeekView.mj_header = cruslCore;
}

- (void)averQuickenPacemaker {
    if ([FryAllowanceKnapsackModel sharedInstance].chicMismatchFace.intValue == 1 && [FryAllowanceKnapsackModel sharedInstance].twicPage.intValue == 0) {
        UIButton *yearMstk = [UIButton buttonWithType:UIButtonTypeCustom];
        [yearMstk addTarget:self action:@selector(selfRetroactiveSunny) forControlEvents:UIControlEventTouchUpInside];
        [yearMstk sd_setImageWithURL:ENCOURAGE_FREEHOLD(26) forState:UIControlStateNormal];
        self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:yearMstk];
    }else {
        self.navigationItem.rightBarButtonItem = nil;
    }
}
- (void)bangleBeltQuicker {
    [self.xistPreventCostView addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(bangleTestedTwill)]];
    
    UILabel *trnsfrmFlow = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, PLYHUS_REGULARIZE, 40)];
    [self.xistPreventCostView addSubview:trnsfrmFlow];
    
    [AssmComplicatedManager fiscallyKulfiTosser:trnsfrmFlow andString:MUNICIPAL_INDISCRETION(521)];
    
    UILabel *cmprTrap = [[UILabel alloc] initWithFrame:CGRectMake(0, 40, PLYHUS_REGULARIZE, 40)];
    [self.xistPreventCostView addSubview:cmprTrap];
    [AssmComplicatedManager fiscallyKulfiTosser:cmprTrap andString:MUNICIPAL_INDISCRETION(507)];
}

- (UIView *)jstlySecularFootman:(NSInteger)ncludGive {
    UIView *shrtPresentVice = [[UIView alloc] initWithFrame:CGRectMake(0, 0, PLYHUS_REGULARIZE, 100)];
    
    UIButton *drumFrwrd = [UIButton buttonWithType:UIButtonTypeCustom];
    [shrtPresentVice addSubview:drumFrwrd];
    [drumFrwrd mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.mas_equalTo(shrtPresentVice);
        make.height.mas_equalTo(50);
        make.width.mas_equalTo(PLYHUS_REGULARIZE/4*3);
    }];
    
    [drumFrwrd setTitle:[self affixInfectProvableFunction:ncludGive] forState:UIControlStateNormal];
    drumFrwrd.backgroundColor = [UIColor whiteColor];
    [drumFrwrd setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    drumFrwrd.layer.masksToBounds = YES;
    drumFrwrd.layer.cornerRadius = 10.0;
    drumFrwrd.tag = ncludGive + 1;
    [drumFrwrd addTarget:self action:@selector(emplyableBeltFirth:) forControlEvents:UIControlEventTouchUpInside];
    return shrtPresentVice;
}

- (NSString *)affixInfectProvableFunction:(NSInteger)ncludGive
{
    NSString *dsignSoft = @"";
    if (ncludGive == 0) {
        dsignSoft = [NSString stringWithFormat:@"%@(%ld)",MUNICIPAL_INDISCRETION(532),self.tgglDisregardNullNum];
    }else if (ncludGive == 1) {
        dsignSoft = MUNICIPAL_INDISCRETION(523);
    }else if (ncludGive == 2) {
        dsignSoft = MUNICIPAL_INDISCRETION(506);
    }
    return dsignSoft;
}

- (void)emplyableBeltFirth:(UIButton *)mnfstMemo
{
    if(mnfstMemo.tag == 1){
        [self tambrEnlivenDipole];
    } else if (mnfstMemo.tag == 2) {
        [self jstleNovemberSunni];
    } else if (mnfstMemo.tag == 3) {
        [self theaterSunniDoom];
    }
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)fullMult {
    return 1;
}
- (NSInteger)tableView:(UITableView *)fullMult numberOfRowsInSection:(NSInteger)rflctShut {
    return self.dntDocumentToneArray.count;
}
- (CGFloat)tableView:(UITableView *)fullMult heightForRowAtIndexPath:(NSIndexPath *)alsoRbuld {
    return 60;
}
- (UITableViewCell *)tableView:(UITableView *)fullMult cellForRowAtIndexPath:(NSIndexPath *)alsoRbuld {
    OrganisationalPlunkTableViewCell *leftXclusv = [fullMult dequeueReusableCellWithIdentifier:@"rrwFontIdentifier" forIndexPath:alsoRbuld];
    
    if (self.dntDocumentToneArray.count > 0) {
        leftXclusv.thrAugmentViceBlock = ^(NSInteger index) {
            [self trellisAllegroRemedy:index];
        };
        DstrctiblDeftSubsistModel *memoPnn = [self.dntDocumentToneArray objectAtIndex:alsoRbuld.row];
        [leftXclusv prizefightTestedLass:memoPnn andRprtRedirectFact:alsoRbuld.row];
    }
    
    return leftXclusv;
}
- (void)trellisAllegroRemedy:(NSInteger)suchSssn {
    BOOL rrrngNear = [AssmComplicatedManager fflineRosebudHauteur:self.dntDocumentToneArray];
    if (rrrngNear) {
        DstrctiblDeftSubsistModel *memoPnn = [self.dntDocumentToneArray objectAtIndex:suchSssn];
        if (memoPnn.master.intValue != 1) {
            
            [self barrenEnlivenGooey:memoPnn];
        }
    }
}
- (CGFloat)tableView:(UITableView *)fullMult heightForFooterInSection:(NSInteger)rflctShut {
    if (self.dntDocumentToneArray.count > 0) {
        BOOL rrrngNear = [AssmComplicatedManager fflineRosebudHauteur:self.dntDocumentToneArray];
        if (rrrngNear) {
            if (![[FryAllowanceKnapsackModel sharedInstance] favelaLaburnumInfect]) {
                return 100;
            }else if (self.tgglDisregardNullNum > 0) {
                return 100;
            }
        }else {
            return 100;
        }
    }
    
    return CGFLOAT_MIN;
}
- (UIView *)tableView:(UITableView *)fullMult viewForFooterInSection:(NSInteger)rflctShut {
    UIView *shrtPresentVice = [[UIView alloc] init];
    
    if (self.dntDocumentToneArray.count > 0) {
        BOOL rrrngNear = [AssmComplicatedManager fflineRosebudHauteur:self.dntDocumentToneArray];
        if (rrrngNear) {
            
            if (![[FryAllowanceKnapsackModel sharedInstance] favelaLaburnumInfect]) {
                shrtPresentVice = [self jstlySecularFootman:2];
            }else if (self.tgglDisregardNullNum > 0) {
                shrtPresentVice = [self jstlySecularFootman:0];
            }
        }else {
            shrtPresentVice = [self jstlySecularFootman:1];
        }
    }
    
    return shrtPresentVice;
}


- (void)tambrEnlivenDipole {
    ObsFlipperThesaurusViewController *plusDlmt = [[ObsFlipperThesaurusViewController alloc] init];
    [self.navigationController pushViewController:plusDlmt animated:YES];
}
- (void)jstleNovemberSunni {
    DstrctiblDeftSubsistModel *rslvOnce = nil;
    for (DstrctiblDeftSubsistModel *model in self.dntDocumentToneArray) {
        if (model.uid.intValue == [FryAllowanceKnapsackModel sharedInstance].uid.intValue) {
            rslvOnce = model;
            break;
        }
    }
    if (rslvOnce) {
        [self barrenEnlivenGooey:rslvOnce];
    }
}
- (void)theaterSunniDoom {
    
    MckEngagedSwollen.barefacedAwakeTested.simplOverviewVaryBlock(19);
}

- (void)bangleTestedTwill {
    BasqAbjectPrintedView *ncrsTone = [[BasqAbjectPrintedView alloc] init];
    ncrsTone.saveSummry = self.ccpyRestoreBlueNum + self.tgglDisregardNullNum;
    ncrsTone.frame = CGRectMake(0, 0, PLYHUS_REGULARIZE, PERFUNCTORILY_CONCOCTION);
    [ncrsTone saceOverboardBurnish];
    [[UIApplication sharedApplication].keyWindow addSubview:ncrsTone];
}

- (void)barrenEnlivenGooey:(DstrctiblDeftSubsistModel *)bookTtmpt {
    
    NSMutableDictionary *restMnfst = [NSMutableDictionary dictionary];
    [restMnfst setObject:bookTtmpt.mail forKey:@"mail"];
    [restMnfst setObject:[FryAllowanceKnapsackModel sharedInstance].rightReceiveHere forKey:REMAND_WLESS((@[@423, @426, @421]))];
    [FryReassessmentTool masterJuristSojourn];
    __weak __typeof(self)phrsBackwardTeam = self;
    [[TrivialityHomecomManager typhnProspectusDoor] post:GRDRN_STERN(lisInterpretPlay) param:restMnfst result:^(id result) {
        if ( [[result objectForKey:@"243"] integerValue] == 200 ) {
            [phrsBackwardTeam.dntDocumentToneArray removeObject:bookTtmpt];
            phrsBackwardTeam.tgglDisregardNullNum = [[result objectForKey:REMAND_WLESS((@[@435, @422, @430, @418, @426, @431]))] integerValue];
            dispatch_async(dispatch_get_main_queue(), ^{
                [phrsBackwardTeam.minsSqueezeWeekView reloadData];
            });
        }
        
        MckEngagedSwollen.barefacedAwakeTested.ntilIntegrateGreyBlock();
        
        NSString *dragPnn = [result objectForKey:@"278"];
        if (dragPnn && [dragPnn isKindOfClass:[NSString class]] && [dragPnn length] > 0)
        {
            [FryReassessmentTool favelaLashMalevolent:dragPnn];
        } else {
            [FryReassessmentTool arsnHauteurAutomate];
        }
    }];
}

- (void)selfRetroactiveSunny {
    
    [AssmComplicatedManager selfRetroactiveSunny:^(bool code) {
        [self nerlgyCorkerAmoeba];
        
    } andFirstPentiumPool:self.view andIndntAsteriskTalk:self];
}

- (void)nerlgyCorkerAmoeba
{
    [AssmComplicatedManager nerlgyCorkerAmoeba:self];
}



- (void)racsInsaneSkepticism {
    __weak __typeof(self)phrsBackwardTeam = self;
    NSMutableDictionary *restMnfst = [NSMutableDictionary dictionary];
    [restMnfst setObject:[FryAllowanceKnapsackModel sharedInstance].uid forKey:@"uid"];
    [restMnfst setObject:[FryAllowanceKnapsackModel sharedInstance].rightReceiveHere forKey:REMAND_WLESS((@[@423, @426, @421]))];
    
    
    [[TrivialityHomecomManager typhnProspectusDoor] post:GRDRN_STERN(dvicInterfereTake) param:restMnfst result:^(id result) {
        if ([[result objectForKey:@"243"] integerValue] == 200 ) {
            [phrsBackwardTeam.dntDocumentToneArray removeAllObjects];
            NSArray *playTtrbut = result[@"264"];
            if (playTtrbut.count > 0) {
                
                NSArray *rctnglCrop = [DstrctiblDeftSubsistModel mj_objectArrayWithKeyValuesArray:playTtrbut];
                
                [phrsBackwardTeam.dntDocumentToneArray addObjectsFromArray:rctnglCrop];

                phrsBackwardTeam.ccpyRestoreBlueNum = [[result objectForKey:REMAND_WLESS((@[@420, @438, @435, @416, @420, @431, @437, @436]))] integerValue];
                phrsBackwardTeam.tgglDisregardNullNum = [[result objectForKey:REMAND_WLESS((@[@435, @422, @430, @418, @426, @431]))] integerValue];
            }
        }


        dispatch_async(dispatch_get_main_queue(), ^{
            [phrsBackwardTeam.minsSqueezeWeekView reloadData];
        });
        [phrsBackwardTeam.minsSqueezeWeekView.mj_header endRefreshing];
    }];
}

@end