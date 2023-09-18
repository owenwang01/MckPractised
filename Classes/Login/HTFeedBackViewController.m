//
//  HTFeedBackViewController.m
// 
//
//  Created by Apple on 2023/2/24.
//  Copyright © 2023 Apple. All rights reserved.
//

#import "HTFeedBackViewController.h"
#import "HTFeedBackTableViewCell.h"
#import "HTNetworkManager.h"

@interface HTFeedBackViewController ()<UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) UITableView *mainTableView;
@property (nonatomic, copy) NSString *titleContent;
@property (nonatomic, copy) NSString *contactsContent;

@end

@implementation HTFeedBackViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = AsciiString(@"Feedback");
}

- (void)lgjeropj_addSubviews{
    self.view.backgroundColor = [UIColor ht_colorWithHexString:@"#232331"];
    UITableView *tableView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStyleGrouped];
    tableView.dataSource = self;
    tableView.delegate = self;
    tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    tableView.backgroundColor = [UIColor clearColor];
    tableView.estimatedSectionFooterHeight = 0.0f;
    tableView.estimatedSectionHeaderHeight = 0.0f;
    self.mainTableView = tableView;
    [self.view addSubview:tableView];
    [tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view.mas_safeAreaLayoutGuideTop);
        make.left.right.mas_equalTo(0);
        make.bottom.equalTo(self.view.mas_safeAreaLayoutGuideBottom);
    }];
    
    UIView *footerView = [[UIView alloc] initWithFrame:CGRectZero];
    footerView.userInteractionEnabled = YES;
    footerView.frame = CGRectMake(0, 0, SCREEN_WIDTH, 84);
    tableView.tableFooterView = footerView;
    UIButton *submitButton = [UIButton buttonWithType:UIButtonTypeCustom];
    submitButton.layer.cornerRadius = 5.0f;
    submitButton.layer.masksToBounds = YES;
    submitButton.backgroundColor = [UIColor ht_colorWithHexString:@"#B82450"];
    [submitButton setTitle:LocalString(@"Submit", nil) forState:UIControlStateNormal];
    [submitButton setTitleColor:[UIColor ht_colorWithHexString:@"#ECECEC"] forState:UIControlStateNormal];
    submitButton.titleLabel.font = [UIFont boldSystemFontOfSize:15];
    [footerView addSubview:submitButton];
    [submitButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(UIEdgeInsetsMake(40, 10, 0, 10));
    }];
    kself
    [[submitButton rac_signalForControlEvents:UIControlEventTouchUpInside] subscribeNext:^(__kindof UIControl * _Nullable x) {
        [weakSelf ht_submit];
    }];
}

- (void)ht_submit{
    HTFeedBackTableViewCell *cell1 = [self.mainTableView cellForRowAtIndexPath:[NSIndexPath indexPathForRow:0 inSection:0]];
    HTFeedBackTableViewCell *cell2 = [self.mainTableView cellForRowAtIndexPath:[NSIndexPath indexPathForRow:0 inSection:1]];
    
    NSDictionary *params = @{
        AsciiString(@"content"): cell1.textView.text.ht_isEmptyStr,
        AsciiString(@"mail"): cell2.textView.text.ht_isEmptyStr,
        AsciiString(@"vid"): self.var_mid ?: @"0",
        AsciiString(@"sid"): self.var_sid ?: @"0",
        AsciiString(@"eid"): self.var_eid ?: @"0",
    };
    [[HTNetworkManager shareInstance] post:kNetworkFormat(STATIC_kAppFeedBack) param:params result:^(id result1) {
        if(TransSuccess(result1)){
            [ZKBaseTipTool showMessage:LocalString(@"Success", nil)];
            [self.navigationController popViewControllerAnimated:YES];
        }else{
            NSString *var_msg = [NSString ht_isEmpty:result1[@"msg"] andReplaceStr:LocalString(@"Failed", nil)];
            UIAlertController *alertController = [UIAlertController alertControllerWithTitle:nil message:var_msg preferredStyle:UIAlertControllerStyleActionSheet];
            
            UIAlertAction *action = [UIAlertAction actionWithTitle:LocalString(@"OK", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {}];
            [alertController addAction:action];
            
            UIPopoverPresentationController *popover = alertController.popoverPresentationController;
            if (popover){
                popover.sourceView = self.view;
                popover.sourceRect = CGRectMake(self.view.frame.size.width/2 -75, self.view.frame.size.height, 150, 150);
                popover.permittedArrowDirections = UIPopoverArrowDirectionDown;
            }
            [self presentViewController:alertController animated:YES completion:nil];
        }
    }];
}

- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView
{
    [self.view endEditing:YES];
}

#pragma mark - UITableViewDataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    HTFeedBackTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CELLString_STATIC_FEEDBACK_CELLID"];
    if(!cell){
        cell = [[HTFeedBackTableViewCell alloc] initWithStyle:(UITableViewCellStyleDefault) reuseIdentifier:@"CELLString_STATIC_FEEDBACK_CELLID"];
    }
    if(indexPath.section == 0){
        cell.titleLabel.text = LocalString(@"Question/Feedback", nil);
        cell.textView.placeholderText = LocalString(@"Please describe your problems or suggestions here.", nil);
    }else{
        cell.titleLabel.text = LocalString(@"Contact Details", nil);
        cell.textView.placeholderText = LocalString(@"Please leave your e-mail address for us to better serve you", nil);
    }
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 20.0f;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    return .0005f;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return indexPath.section > 0 ? 178.0f : 223.0f;
}

@end
