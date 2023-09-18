//
//  HTMineViewController.m
// 
//
//  Created by Apple on 2023/2/23.
//  Copyright © 2023 Apple. All rights reserved.
//

#import "HTMineViewController.h"
#import "HTMineTableViewHeader.h"
#import "HTMineNormalTableViewCell.h"
#import "HTMineMenuDataModel.h"
#import "HTMineHorizontalHistoryCell.h"
#import "HTHistoryData.h"
#import "HTFeedBackViewController.h"

@interface HTMineViewController ()<UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) UITableView *mainTableView;
@property (nonatomic, strong) NSArray *historyData;
@property (nonatomic, strong) HTMineTableViewHeader *header;
@property (nonatomic, strong) HTMineMenuDataModel *menuHistory;

@end

@implementation HTMineViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.dataArray addObjectsFromArray:[HTMineMenuDataModel mineViewMenuData]];
    
    @weakify(self);
    [[[NSNotificationCenter defaultCenter] rac_addObserverForName:@"NTFCTString_UpdateUserDisplayInformation" object:nil] subscribeNext:^(NSNotification * _Nullable x) {
        @strongify(self);
        [self lgjeropj_updateUI];
    }];
    
    [[[NSNotificationCenter defaultCenter] rac_addObserverForName:NTFCTString_FinishSubscribeNotification object:nil] subscribeNext:^(NSNotification * _Nullable x) {
        @strongify(self);
        [self lgjeropj_updateUI];
    }];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    self.historyData = HTCommonConfiguration.lgjeropj_shared.BLOCK_historyDataBlock();
    if(self.historyData.count > 0){
        if(![self.dataArray containsObject:self.menuHistory]){
            [self.dataArray insertObject:self.menuHistory atIndex:1];
        }
    }
    [self.mainTableView reloadData];
    [self lgjeropj_updateUI];
}

- (void)lgjeropj_addSubviews{
    self.view.backgroundColor = [UIColor ht_colorWithHexString:@"#232331"];
    UIImageView *bgImageView = [[UIImageView alloc] initWithFrame:CGRectZero];
    [bgImageView sd_setImageWithURL:kImageNumber(244)];
    [self.view addSubview:bgImageView];
    [bgImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view).offset(0);
        make.left.right.mas_equalTo(0);
        CGFloat height = HTScaleHeight(2.84, SCREEN_WIDTH);
        make.height.mas_equalTo(height);
    }];
    
    UITableView *tableView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStyleGrouped];
    tableView.dataSource = self;
    tableView.delegate = self;
    tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    tableView.backgroundColor = [UIColor clearColor];
    [tableView registerClass:HTMineHorizontalHistoryCell.class forCellReuseIdentifier:@"CELLString_STATIC_MENU_HISTORY"];
    self.mainTableView = tableView;
    [self.view addSubview:tableView];
    [tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view.mas_safeAreaLayoutGuideTop);
        make.left.right.mas_equalTo(0);
        make.bottom.equalTo(self.view.mas_safeAreaLayoutGuideBottom);
    }];
    
    HTMineTableViewHeader *header = [[HTMineTableViewHeader alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, [self ht_headerHeight])];
    header.backgroundColor = [UIColor clearColor];
    tableView.tableHeaderView = header;
    self.header = header;
}

-(void)ht_reloadTableHeader
{
    CGRect frame = self.header.frame;
    frame.size.height = [self ht_headerHeight];
    self.header.frame = frame;
    self.mainTableView.tableHeaderView = self.header;
}

- (float)ht_headerHeight
{
    float heightSpace = HTScaleHeight(1.2, SCREEN_WIDTH) * 0.5;
    float var_heightA = heightSpace-10 - 60;
    float var_heightB = heightSpace-10;
    float height = [[HTAccountModel sharedInstance] ht_isVip] ? var_heightA:var_heightB;
    return  height;
}

#pragma mark - UITableViewDataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.dataArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    HTMineMenuDataModel *model = self.dataArray[indexPath.row];
    if(model.cellType == ENUM_MineViewCellTypeHistory){
        HTMineHorizontalHistoryCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CELLString_STATIC_MENU_HISTORY" forIndexPath:indexPath];
        if(!cell){
            cell = [[HTMineHorizontalHistoryCell alloc] initWithStyle:(UITableViewCellStyleDefault) reuseIdentifier:@"CELLString_STATIC_MENU_HISTORY"];
        }
        [cell ht_updateCellWithData:self.historyData andSelectedBlock:^(HTHistoryData *var_dataModel) {
            
            [HTCommonUtils ht_playVieoWithId:var_dataModel.videoId andType:var_dataModel.var_videoType andSource:6];
            
        }];
        return cell;
    }else{
        HTMineNormalTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CELLString_STATIC_MENU_NORMAL"];
        if(!cell){
            cell = [[HTMineNormalTableViewCell alloc] initWithStyle:(UITableViewCellStyleDefault) reuseIdentifier:@"CELLString_STATIC_MENU_NORMAL"];
        }
        [cell ht_updateCellWithData:self.dataArray[indexPath.row]];
        return cell;
    }
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    HTMineMenuDataModel *model = self.dataArray[indexPath.row];
    switch (model.var_menuType) {
        case ENUM_MineViewMenuTypeHistory:{
            HTCommonConfiguration.lgjeropj_shared.BLOCK_toHistoryListPageBlock();
        }break;
        case ENUM_MineViewMenuTypeWatchLater:{
            HTCommonConfiguration.lgjeropj_shared.BLOCK_toWatchLaterPageBlock();
        }break;
        case ENUM_MineViewMenuTypeShare:{
            [self ht_goShare];
        }break;
        case ENUM_MineViewMenuTypeFeedBack:{
            HTFeedBackViewController *feedBackVC = [[HTFeedBackViewController alloc] init];
            [self.navigationController pushViewController:feedBackVC animated:YES];
        }break;
        default:break;
    }
}

- (void)ht_goShare {
    
    CGRect realRect = CGRectMake(SCREEN_WIDTH-300, -250, 400, 300);
    NSString *contentText = [[NSUserDefaults standardUserDefaults] objectForKey:@"udf_appm_text"];
    NSString *contentUrl = [[NSUserDefaults standardUserDefaults] objectForKey:@"udf_appm_link"];
    [HTCommonUtils ht_shareWithElseAppWithTitle:contentText andUrl:contentUrl andSourceRect:realRect andDoneBlock:^(UIActivityType  _Nullable activityType, BOOL completed, NSArray * _Nullable returnedItems, NSError * _Nullable activityError) {}];
}

//退出登录
- (void)lgjeropj_updateUI {
    [self.header ht_updateViewData];
    [self ht_reloadTableHeader];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    HTMineMenuDataModel *model = self.dataArray[indexPath.row];
    if(model.cellType == ENUM_MineViewCellTypeHistory){
        return self.historyData.count > 0 ? 190.0f:0.001;
    }else{
        return 50.0f;
    }
}

- (HTMineMenuDataModel *)menuHistory{
    if(!_menuHistory){
        HTMineMenuDataModel *menuHistory = [[HTMineMenuDataModel alloc] init];
        menuHistory.cellType = ENUM_MineViewCellTypeHistory;
        menuHistory.var_menuType = ENUM_MineViewMenuTypeHistory;
        _menuHistory = menuHistory;
    }
    return _menuHistory;
}

@end
