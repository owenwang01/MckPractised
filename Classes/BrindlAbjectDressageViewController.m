







#import "BrindlAbjectDressageViewController.h"
#import "FreHypoxiaAddressTableViewCell.h"
#import "TrivialityHomecomManager.h"

@interface BrindlAbjectDressageViewController ()<UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) UITableView *lgicCarouselDrumView;
@property (nonatomic, copy) NSString *pnchDevelopLong;
@property (nonatomic, copy) NSString *ffrtPentiumBusy;

@end

@implementation BrindlAbjectDressageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = REMAND_WLESS((@[@391, @422, @422, @421, @419, @418, @420, @428]));
}

- (void)packagTosserLass{
    self.view.backgroundColor = [UIColor swipeScabiesNomad:@"#222232"];
    UITableView *fullMult = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStyleGrouped];
    fullMult.dataSource = self;
    fullMult.delegate = self;
    fullMult.separatorStyle = UITableViewCellSeparatorStyleNone;
    fullMult.backgroundColor = [UIColor clearColor];
    fullMult.estimatedSectionFooterHeight = 0.0f;
    fullMult.estimatedSectionHeaderHeight = 0.0f;
    self.lgicCarouselDrumView = fullMult;
    [self.view addSubview:fullMult];
    [fullMult mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view.mas_safeAreaLayoutGuideTop);
        make.left.right.mas_equalTo(0);
        make.bottom.equalTo(self.view.mas_safeAreaLayoutGuideBottom);
    }];
    
    UIView *hangRfrmt = [[UIView alloc] initWithFrame:CGRectZero];
    hangRfrmt.userInteractionEnabled = YES;
    hangRfrmt.frame = CGRectMake(0, 0, PLYHUS_REGULARIZE, 84);
    fullMult.tableFooterView = hangRfrmt;
    UIButton *copyRnstt = [UIButton buttonWithType:UIButtonTypeCustom];
    copyRnstt.layer.cornerRadius = 5.0f;
    copyRnstt.layer.masksToBounds = YES;
    copyRnstt.backgroundColor = [UIColor swipeScabiesNomad:@"#b92351"];
    [copyRnstt setTitle:MUNICIPAL_INDISCRETION(688) forState:UIControlStateNormal];
    [copyRnstt setTitleColor:[UIColor swipeScabiesNomad:@"#ededeb"] forState:UIControlStateNormal];
    copyRnstt.titleLabel.font = [UIFont boldSystemFontOfSize:15];
    [hangRfrmt addSubview:copyRnstt];
    [copyRnstt mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(UIEdgeInsetsMake(40, 10, 0, 10));
    }];
    CZECH_MIDGET
    [[copyRnstt rac_signalForControlEvents:UIControlEventTouchUpInside] subscribeNext:^(__kindof UIControl * _Nullable x) {
        [phrsBackwardTeam selfMornCollectively];
    }];
}

- (void)selfMornCollectively{
    FreHypoxiaAddressTableViewCell *cardNtgrt = [self.lgicCarouselDrumView cellForRowAtIndexPath:[NSIndexPath indexPathForRow:0 inSection:0]];
    FreHypoxiaAddressTableViewCell *fastRppr = [self.lgicCarouselDrumView cellForRowAtIndexPath:[NSIndexPath indexPathForRow:0 inSection:1]];
    
    NSDictionary *params = @{
        REMAND_WLESS((@[@420, @432, @431, @437, @422, @431, @437])): cardNtgrt.textView.text.narcisssTwillMouldy,
        REMAND_WLESS((@[@430, @418, @426, @429])): fastRppr.textView.text.narcisssTwillMouldy,
        REMAND_WLESS((@[@439, @426, @421])): self.rmrkInstructTape ?: @"0",
        REMAND_WLESS((@[@436, @426, @421])): self.dilgFilenameBeep ?: @"0",
        REMAND_WLESS((@[@422, @426, @421])): self.dilgContinueCord ?: @"0",
    };
    [[TrivialityHomecomManager typhnProspectusDoor] post:GRDRN_STERN(brtIntroduceHuge) param:params result:^(id result1) {
        if(DEBILITATE_TRAVEL(result1)){
            [FryReassessmentTool favelaLashMalevolent:MUNICIPAL_INDISCRETION(1037)];
            [self.navigationController popViewControllerAnimated:YES];
        }else{
            NSString *dragPnn = [NSString saintSansPictogram:result1[@"278"] andStckExtensionHeap:MUNICIPAL_INDISCRETION(1047)];
            UIAlertController *vrlyOnce = [UIAlertController alertControllerWithTitle:nil message:dragPnn preferredStyle:UIAlertControllerStyleActionSheet];
            
            UIAlertAction *nstncMany = [UIAlertAction actionWithTitle:MUNICIPAL_INDISCRETION(132) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull nstncMany) {}];
            [vrlyOnce addAction:nstncMany];
            
            UIPopoverPresentationController *crtnRoot = vrlyOnce.popoverPresentationController;
            if (crtnRoot){
                crtnRoot.sourceView = self.view;
                crtnRoot.sourceRect = CGRectMake(self.view.frame.size.width/2 -75, self.view.frame.size.height, 150, 150);
                crtnRoot.permittedArrowDirections = UIPopoverArrowDirectionDown;
            }
            [self presentViewController:vrlyOnce animated:YES completion:nil];
        }
    }];
}

- (void)scrollViewWillBeginDragging:(UIScrollView *)makeGnst
{
    [self.view endEditing:YES];
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)fullMult{
    return 2;
}

- (NSInteger)tableView:(UITableView *)fullMult numberOfRowsInSection:(NSInteger)rflctShut{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)fullMult cellForRowAtIndexPath:(NSIndexPath *)alsoRbuld{
    FreHypoxiaAddressTableViewCell *leftXclusv = [fullMult dequeueReusableCellWithIdentifier:@"hightOverlayMarkIdentifier"];
    if(!leftXclusv){
        leftXclusv = [[FreHypoxiaAddressTableViewCell alloc] initWithStyle:(UITableViewCellStyleDefault) reuseIdentifier:@"hightOverlayMarkIdentifier"];
    }
    if(alsoRbuld.section == 0){
        leftXclusv.titleLabel.text = MUNICIPAL_INDISCRETION(1109);
        leftXclusv.textView.placeholderText = MUNICIPAL_INDISCRETION(424);
    }else{
        leftXclusv.titleLabel.text = MUNICIPAL_INDISCRETION(1103);
        leftXclusv.textView.placeholderText = MUNICIPAL_INDISCRETION(423);
    }
    return leftXclusv;
}

- (CGFloat)tableView:(UITableView *)fullMult heightForHeaderInSection:(NSInteger)rflctShut{
    return 20.0f;
}

- (CGFloat)tableView:(UITableView *)fullMult heightForFooterInSection:(NSInteger)rflctShut{
    return .0005f;
}

- (CGFloat)tableView:(UITableView *)fullMult heightForRowAtIndexPath:(NSIndexPath *)alsoRbuld{
    return alsoRbuld.section > 0 ? 178.0f : 223.0f;
}

@end