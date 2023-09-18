//
//  HTFamilyViewController.m
//  Merriciya
//
//  Created by 昊天 on 2023/5/29.
//

#import "HTFamilyViewController.h"
#import "ZQFamilyViewControllerManager.h"
#import "HTFamilyQuestionView.h"
#import "HTNetworkManager.h"
#import <MJRefresh/MJRefresh.h>

@interface HTFamilyViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (nonatomic, strong) UIView *var_bottomView;
@property (nonatomic, assign) NSInteger var_remainNum;
@property (nonatomic, assign) NSInteger var_currentNum;
@end

@implementation HTFamilyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = LocalString(@"Family Account", nil);
    self.var_familyDataArray = [NSMutableArray array];
    [self ht_setupUI];
}
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.var_tableView.mj_header beginRefreshing];
}
- (void)ht_setupUI {
    self.var_bottomView = [[UIView alloc] init];
    [self.view addSubview:self.var_bottomView];
    [self.var_bottomView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.left.right.mas_equalTo(self.view);
        make.height.mas_equalTo(100);
    }];
    [self ht_setupBottomView];
    
    self.var_tableView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStylePlain];
    [self.view addSubview:self.var_tableView];
    [self.var_tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.view.mas_safeAreaLayoutGuideTop);
        make.left.right.mas_equalTo(self.view);
        make.bottom.mas_equalTo(self.var_bottomView.mas_top).mas_offset(0);
    }];
    self.var_tableView.delegate = self;
    self.var_tableView.dataSource = self;
    self.var_tableView.backgroundColor = [UIColor clearColor];
    self.var_tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.var_tableView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
    [self.var_tableView registerClass:[HTFamilyTableViewCell class] forCellReuseIdentifier:@"CELLString_HTFamilyTableViewCell"];
    
    MJRefreshNormalHeader *header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(ht_loadData)];
    header.automaticallyChangeAlpha = YES;
    header.lastUpdatedTimeLabel.hidden = YES;
    header.loadingView.activityIndicatorViewStyle = UIActivityIndicatorViewStyleMedium;
    self.var_tableView.mj_header = header;
}

- (void)ht_setupNavigation {
    if ([HTAccountModel sharedInstance].var_identity.intValue == 1 && [HTAccountModel sharedInstance].var_bindPlanState.intValue == 0) {
        UIButton *var_dissolveButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [var_dissolveButton addTarget:self action:@selector(ht_dissolveFamilyGroupAction) forControlEvents:UIControlEventTouchUpInside];
        [var_dissolveButton sd_setImageWithURL:kImageNumber(26) forState:UIControlStateNormal];
        self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:var_dissolveButton];
    }else {
        self.navigationItem.rightBarButtonItem = nil;
    }
}
- (void)ht_setupBottomView {
    [self.var_bottomView addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(ht_familyQuestionAction)]];
    
    UILabel *var_whatButton = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 40)];
    [self.var_bottomView addSubview:var_whatButton];
    
    [ZQFamilyViewControllerManager lgjeropj_commomAttr:var_whatButton andString:LocalString(@"What is a family package?", nil)];
    
    UILabel *var_upgradeButton = [[UILabel alloc] initWithFrame:CGRectMake(0, 40, SCREEN_WIDTH, 40)];
    [self.var_bottomView addSubview:var_upgradeButton];
    [ZQFamilyViewControllerManager lgjeropj_commomAttr:var_upgradeButton andString:LocalString(@"Upgrade to family package?", nil)];
}

- (UIView *)ht_setupSectionView:(NSInteger)type {
    UIView *var_sectionView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 100)];
    
    UIButton *var_button = [UIButton buttonWithType:UIButtonTypeCustom];
    [var_sectionView addSubview:var_button];
    [var_button mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.mas_equalTo(var_sectionView);
        make.height.mas_equalTo(50);
        make.width.mas_equalTo(SCREEN_WIDTH/4*3);
    }];
    
    [var_button setTitle:[self lgjeropj_getText:type] forState:UIControlStateNormal];
    var_button.backgroundColor = [UIColor whiteColor];
    [var_button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    var_button.layer.masksToBounds = YES;
    var_button.layer.cornerRadius = 10.0;
    var_button.tag = type + 1;
    [var_button addTarget:self action:@selector(ht_ButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    return var_sectionView;
}

- (NSString *)lgjeropj_getText:(NSInteger)type
{
    NSString *var_titleString = @"";
    if (type == 0) {
        var_titleString = [NSString stringWithFormat:@"%@(%ld)",LocalString(@"Add family members", nil),self.var_remainNum];
    }else if (type == 1) {
        var_titleString = LocalString(@"Quit Family Plan", nil);
    }else if (type == 2) {
        var_titleString = LocalString(@"Buy Family Plan", nil);
    }
    return var_titleString;
}

- (void)ht_ButtonAction:(UIButton *)sender
{
    if(sender.tag == 1){
        [self ht_addMemberAction];
    } else if (sender.tag == 2) {
        [self ht_quitFamilyAction];
    } else if (sender.tag == 3) {
        [self ht_buyFamilyAction];
    }
}

#pragma mark - table delegate
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.var_familyDataArray.count;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 60;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    HTFamilyTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CELLString_HTFamilyTableViewCell" forIndexPath:indexPath];
    
    if (self.var_familyDataArray.count > 0) {
        cell.var_familyMemberCellClickBlock = ^(NSInteger index) {
            [self ht_familyMemberCellClick:index];
        };
        ZQFamilyAccountModel *model = [self.var_familyDataArray objectAtIndex:indexPath.row];
        [cell lgjeropj_updateCellWithData:model andIndex:indexPath.row];
    }
    
    return cell;
}
- (void)ht_familyMemberCellClick:(NSInteger)index {
    BOOL var_master = [ZQFamilyViewControllerManager ht_judgeUserIsMaster:self.var_familyDataArray];
    if (var_master) {
        ZQFamilyAccountModel *model = [self.var_familyDataArray objectAtIndex:index];
        if (model.master.intValue != 1) {
            // 主账号删除子成员
            [self ht_deleteFamilyMember:model];
        }
    }
}
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    if (self.var_familyDataArray.count > 0) {
        BOOL var_master = [ZQFamilyViewControllerManager ht_judgeUserIsMaster:self.var_familyDataArray];
        if (var_master) {
            if (![[HTAccountModel sharedInstance] ht_isVip]) {
                return 100;
            }else if (self.var_remainNum > 0) {
                return 100;
            }
        }else {
            return 100;
        }
    }
    
    return CGFLOAT_MIN;
}
- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section {
    UIView *var_sectionView = [[UIView alloc] init];
    
    if (self.var_familyDataArray.count > 0) {
        BOOL var_master = [ZQFamilyViewControllerManager ht_judgeUserIsMaster:self.var_familyDataArray];
        if (var_master) {
            
            if (![[HTAccountModel sharedInstance] ht_isVip]) {
                var_sectionView = [self ht_setupSectionView:2];
            }else if (self.var_remainNum > 0) {
                var_sectionView = [self ht_setupSectionView:0];
            }
        }else {
            var_sectionView = [self ht_setupSectionView:1];
        }
    }
    
    return var_sectionView;
}

#pragma mark - Action
- (void)ht_addMemberAction {
    HTFamilyMemberViewController *controller = [[HTFamilyMemberViewController alloc] init];
    [self.navigationController pushViewController:controller animated:YES];
}
- (void)ht_quitFamilyAction {
    ZQFamilyAccountModel *userModel = nil;
    for (ZQFamilyAccountModel *model in self.var_familyDataArray) {
        if (model.uid.intValue == [HTAccountModel sharedInstance].uid.intValue) {
            userModel = model;
            break;
        }
    }
    if (userModel) {
        [self ht_deleteFamilyMember:userModel];
    }
}
- (void)ht_buyFamilyAction {
    //前往订阅页
    HTCommonConfiguration.lgjeropj_shared.BLOCK_toPremiumBlock(19);
}

- (void)ht_familyQuestionAction {
    HTFamilyQuestionView *view = [[HTFamilyQuestionView alloc] init];
    view.var_total = self.var_currentNum + self.var_remainNum;
    view.frame = CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT);
    [view lgjeropj_addView];
    [[UIApplication sharedApplication].keyWindow addSubview:view];
}

- (void)ht_deleteFamilyMember:(ZQFamilyAccountModel *)modelData {
    
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    [dict setObject:modelData.mail forKey:@"mail"];
    [dict setObject:[HTAccountModel sharedInstance].var_fid forKey:AsciiString(@"fid")];
    [ZKBaseTipTool showLoadingTip];
    __weak __typeof(self)weakSelf = self;
    [[HTNetworkManager shareInstance] post:kNetworkFormat(STATIC_kDeleteFamilyNumber) param:dict result:^(id result) {
        if ( [[result objectForKey:@"status"] integerValue] == 200 ) {
            [weakSelf.var_familyDataArray removeObject:modelData];
            weakSelf.var_remainNum = [[result objectForKey:AsciiString(@"remain")] integerValue];
            dispatch_async(dispatch_get_main_queue(), ^{
                [weakSelf.var_tableView reloadData];
            });
        }
        // 订阅验证
        HTCommonConfiguration.lgjeropj_shared.BLOCK_subscribeVerifyBlock();
        
        NSString *var_msg = [result objectForKey:@"msg"];
        if (var_msg && [var_msg isKindOfClass:[NSString class]] && [var_msg length] > 0)
        {
            [ZKBaseTipTool showMessage:var_msg];
        } else {
            [ZKBaseTipTool hideAllLoadingTip];
        }
    }];
}

- (void)ht_dissolveFamilyGroupAction {
    
    [ZQFamilyViewControllerManager ht_dissolveFamilyGroupAction:^(bool code) {
        [self lgjeropj_deleteFamilyAction];
        
    } andView:self.view andController:self];
}

- (void)lgjeropj_deleteFamilyAction
{
    [ZQFamilyViewControllerManager lgjeropj_deleteFamilyAction:self];
}

#pragma mark - data

- (void)ht_loadData {
    __weak __typeof(self)weakSelf = self;
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    [dict setObject:[HTAccountModel sharedInstance].uid forKey:@"uid"];
    [dict setObject:[HTAccountModel sharedInstance].var_fid forKey:AsciiString(@"fid")];
    
    
    [[HTNetworkManager shareInstance] post:kNetworkFormat(STATIC_kFamilyList) param:dict result:^(id result) {
        if ([[result objectForKey:@"status"] integerValue] == 200 ) {
            [weakSelf.var_familyDataArray removeAllObjects];
            NSArray *dataArr = result[@"data"];
            if (dataArr.count > 0) {
                
                NSArray *var_tmpArr = [ZQFamilyAccountModel mj_objectArrayWithKeyValuesArray:dataArr];
                
                [weakSelf.var_familyDataArray addObjectsFromArray:var_tmpArr];

                weakSelf.var_currentNum = [[result objectForKey:AsciiString(@"cur_cnts")] integerValue];
                weakSelf.var_remainNum = [[result objectForKey:AsciiString(@"remain")] integerValue];
            }
        }


        dispatch_async(dispatch_get_main_queue(), ^{
            [weakSelf.var_tableView reloadData];
        });
        [weakSelf.var_tableView.mj_header endRefreshing];
    }];
}

@end
