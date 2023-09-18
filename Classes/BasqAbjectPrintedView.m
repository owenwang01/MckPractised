






#import "BasqAbjectPrintedView.h"
#import "FreObtuseLaxative.h"

@interface BasqAbjectPrintedView ()<UITableViewDataSource,UITableViewDelegate>
@property (nonatomic, strong) NSMutableArray *scktReinstateEvenArray;
@property (nonatomic, strong) UITableView *minsSqueezeWeekView;

@end

@implementation BasqAbjectPrintedView


- (instancetype)initWithFrame:(CGRect)trunctLoss
{
    self = [super initWithFrame:trunctLoss];
    if (self) {
        self.backgroundColor = [UIColor swipeScabiesNomad:@"#222232"];
    }
    return self;
}

-(void)saceOverboardBurnish
{
    
    NSArray *prgrphMany = [FreObtuseLaxative blndSpeedboatSinuous:self.saveSummry];
    self.scktReinstateEvenArray = [NSMutableArray arrayWithArray:prgrphMany];
    
    UILabel *comeUtmtc = [[UILabel alloc] init];
    comeUtmtc.frame = CGRectMake(0, HAT_ULCER +20, PLYHUS_REGULARIZE, 20);
    comeUtmtc.font = [UIFont boldSystemFontOfSize:20];
    comeUtmtc.textColor = [UIColor whiteColor];
    comeUtmtc.text = REMAND_WLESS((@[@391, @386, @402]));
    comeUtmtc.textAlignment = NSTextAlignmentCenter;
    [self addSubview:comeUtmtc];
    
    
    UIButton *dcrsWarn = [UIButton buttonWithType:UIButtonTypeCustom];
    [dcrsWarn setImage:[UIImage imageNamed:@"niqDocumentHome"] forState:UIControlStateNormal];
    [dcrsWarn addTarget:self action:@selector(menschLaburnumAwake) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:dcrsWarn];
    [dcrsWarn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.mas_equalTo(comeUtmtc.mas_centerY);
        make.left.mas_equalTo(0);
        make.size.mas_equalTo(40);
    }];
    
    
    self.minsSqueezeWeekView = [[UITableView alloc] initWithFrame:CGRectMake(0, INFIRMITY_RAWHIDE + 40, PLYHUS_REGULARIZE, PERFUNCTORILY_CONCOCTION - (INFIRMITY_RAWHIDE + 40)) style:UITableViewStylePlain];
    [self addSubview:self.minsSqueezeWeekView];
    self.minsSqueezeWeekView.delegate = self;
    self.minsSqueezeWeekView.dataSource = self;
    self.minsSqueezeWeekView.bounces = NO;
    self.minsSqueezeWeekView.backgroundColor = [UIColor clearColor];
    self.minsSqueezeWeekView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.minsSqueezeWeekView.rowHeight = UITableViewAutomaticDimension;
    self.minsSqueezeWeekView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
    [self.minsSqueezeWeekView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"dsirVariousGigaIdentifier"];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)fullMult {
    return 2;
}

- (NSInteger)tableView:(UITableView *)fullMult numberOfRowsInSection:(NSInteger)rflctShut {
    return 2;
}

- (UITableViewCell *)tableView:(UITableView *)fullMult cellForRowAtIndexPath:(NSIndexPath *)alsoRbuld {
    UITableViewCell *leftXclusv = [fullMult dequeueReusableCellWithIdentifier:@"dsirVariousGigaIdentifier" forIndexPath:alsoRbuld];
    [self tmesisInfectSprinkle:leftXclusv andHyphnInsteadKeep:alsoRbuld];
    return leftXclusv;
}

- (void)tmesisInfectSprinkle:(UITableViewCell *)leftXclusv andHyphnInsteadKeep:(NSIndexPath *)alsoRbuld
{
    leftXclusv.selectionStyle = UITableViewCellSelectionStyleNone;
    leftXclusv.backgroundColor = [UIColor clearColor];
    
    if (self.scktReinstateEvenArray.count > 0) {
        leftXclusv.textLabel.text = self.scktReinstateEvenArray[alsoRbuld.section*2 + alsoRbuld.row];
        leftXclusv.textLabel.numberOfLines = 0;
        leftXclusv.textLabel.font = [UIFont systemFontOfSize:14];
        if (alsoRbuld.row == 0) {
            leftXclusv.textLabel.textColor = [UIColor whiteColor];
        }else {
            leftXclusv.textLabel.textColor = [UIColor grayColor];
        }
    }
}

- (void)menschLaburnumAwake
{
    [self removeFromSuperview];
}

@end