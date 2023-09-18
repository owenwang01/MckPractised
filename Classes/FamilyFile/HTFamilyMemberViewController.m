//
//  HTFamilyMemberViewController.m
//  Merriciya
//
//  Created by 昊天 on 2023/5/29.
//

#import "HTFamilyMemberViewController.h"
#import "HTFamilyMemberTableViewCell.h"
#import "ZQFamilyManager.h"
#import "ZQFamilyManagerTwo.h"
#import "HTFamilyMemberViewControllerManager.h"
#import "HTNetworkManager.h"

@interface HTFamilyMemberViewController ()<UITableViewDataSource,UITableViewDelegate,UITextFieldDelegate>
@end

@implementation HTFamilyMemberViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = LocalString(@"Add Member", nil);
    [self ht_loadData];
    [self ht_setupUI];
}
- (void)ht_loadData {
    NSString *var_stringOne = LocalString(@"Email, phone or account ID", nil);
    NSString *var_stringTwo = LocalString(@"Phone number example: +19097165187", nil);
    NSString *var_stringThree = LocalString(@"*You can only add users registered in this app\n*You can add up to four additional family members\n*You cannot add users with family plan accounts", nil);
    self.var_familyDataArray = [NSMutableArray arrayWithCapacity:5];
    [self.var_familyDataArray addObject:var_stringOne];
    [self.var_familyDataArray addObject:var_stringTwo];
    [self.var_familyDataArray addObject:var_stringThree];
}

- (void)ht_setupUI {
    self.var_tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 30, SCREEN_WIDTH, SCREEN_HEIGHT) style:UITableViewStylePlain];
    [self.view addSubview:self.var_tableView];
    self.var_tableView.delegate = self;
    self.var_tableView.dataSource = self;
    self.var_tableView.backgroundColor = [UIColor clearColor];
    self.var_tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.var_tableView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
    [self.var_tableView registerClass:[HTFamilyMemberTableViewCell class] forCellReuseIdentifier:@"CELLString_FamilyMemberTableViewCell"];
}
#pragma mark - table delegate
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 2 - section;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0) {
        return (indexPath.row == 0) ? 40:30;
    }
    return 130;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    HTFamilyMemberTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CELLString_FamilyMemberTableViewCell" forIndexPath:indexPath];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.backgroundColor = [UIColor clearColor];
    
    if (self.var_familyDataArray.count > 0)
    {
        NSInteger index = (indexPath.section == 0) ?indexPath.row : 2;
        
        //
        if (index == 0)
        {
            cell.var_textField.hidden = NO;
            cell.var_lineView.hidden = NO;
            cell.var_questionButton.hidden = NO;
            cell.var_detailLabel.hidden = YES;
            
            NSDictionary *var_attributes = @{NSForegroundColorAttributeName:[UIColor lightGrayColor], NSFontAttributeName:[UIFont systemFontOfSize:16]};
            cell.var_textField.attributedPlaceholder = [[NSAttributedString alloc] initWithString:self.var_familyDataArray[index] attributes:var_attributes];
        } else
        {
            cell.var_textField.hidden = YES;
            cell.var_lineView.hidden = YES;
            cell.var_questionButton.hidden = YES;
            cell.var_detailLabel.hidden = NO;
            
            cell.var_detailLabel.text = self.var_familyDataArray[index];
        }        
        //
        if (index == 0) {
            cell.var_textField.delegate = self;
            [cell.var_questionButton addTarget:self action:@selector(ht_showHowAddMember) forControlEvents:UIControlEventTouchUpInside];
        }
    }
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return (section == 1) ? (120+30):(30+30);
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {    
    return [self lgjeropj_sectionHeaderUi:section];
}

- (UIView *)lgjeropj_sectionHeaderUi:(NSInteger)section
{
    UIView *var_sectionView = [[UIView alloc] init];
    if (section == 1) {
        UIButton *var_button = [UIButton buttonWithType:UIButtonTypeCustom];
        var_button.backgroundColor = [UIColor whiteColor];
        [var_button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [var_button setTitle:AsciiString(@"Add") forState:UIControlStateNormal];
        var_button.layer.masksToBounds = YES;
        var_button.layer.cornerRadius = 10.0;
        [var_button addTarget:self action:@selector(ht_addMemberAction) forControlEvents:UIControlEventTouchUpInside];
        [var_sectionView addSubview:var_button];
        [var_button mas_makeConstraints:^(MASConstraintMaker *make) {
            make.center.mas_equalTo(var_sectionView);
            make.height.mas_equalTo(50);
            
            make.width.mas_equalTo(0.75 *SCREEN_WIDTH);
        }];
    }
    return var_sectionView;
}

- (void)ht_addMemberAction {
    [self.view endEditing:YES];
    
    if (self.var_inputText.length == 0) {
        [ZKBaseTipTool showMessage:LocalString(@"Email, phone or account ID", nil)];
    }else {
        [ZKBaseTipTool showLoadingTip];
        NSMutableDictionary *dict = [NSMutableDictionary dictionary];
        [dict setObject:self.var_inputText forKey:@"mail"];

        [dict setObject:[HTAccountModel sharedInstance].var_fid forKey:AsciiString(@"fid")];
        __weak __typeof(self)weakSelf = self;
        [[HTNetworkManager shareInstance] post:kNetworkFormat(STATIC_kAddFamily) param:dict result:^(id result) {
            [ZKBaseTipTool hideAllLoadingTip];
            [weakSelf lgjeropj_showUpdataResult:result];

        }];
    }
}
- (void)lgjeropj_showUpdataResult:(NSDictionary *)dict {
    __weak __typeof(self)weakSelf = self;
    [ZQFamilyManagerTwo lgjeropj_showUpdataResult:dict andText:self.var_inputText andBlock:^(bool code, NSString *title, NSString *msg) {
        [weakSelf ht_shareMemberThisApp:title andMsg:msg];
        weakSelf.var_inputText = @"";
    }];
}

- (void)ht_shareMemberThisApp:(NSString *)title andMsg:(NSString *)message {
    [HTFamilyMemberViewControllerManager ht_shareMemberThisApp:title andMsg:message andView:self.view andController:self];
}
- (void)ht_showHowAddMember {
    [HTFamilyMemberViewControllerManager ht_showHowAddMember:self.view andController:self];
}
- (void)textFieldDidEndEditing:(UITextField *)textField {
    self.var_inputText = textField.text;
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}

@end
