//
//  HTFamilyQuestionView.m
//  Axcolly
//
//  Created by dn on 2023/7/3.
//

#import "HTFamilyQuestionView.h"
#import "ZQFamilyManagerThree.h"

@interface HTFamilyQuestionView ()<UITableViewDataSource,UITableViewDelegate>
@property (nonatomic, strong) NSMutableArray *var_fDataArray;
@property (nonatomic, strong) UITableView *var_tableView;

@end

@implementation HTFamilyQuestionView


- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor ht_colorWithHexString:@"#232331"];
    }
    return self;
}

-(void)lgjeropj_addView
{
    
    NSArray *array = [ZQFamilyManagerThree lgjeropj_questionViewTitleArray:self.var_total];
    self.var_fDataArray = [NSMutableArray arrayWithArray:array];
    
    UILabel *lable = [[UILabel alloc] init];
    lable.frame = CGRectMake(0, StatusBarHeight +20, SCREEN_WIDTH, 20);
    lable.font = [UIFont boldSystemFontOfSize:20];
    lable.textColor = [UIColor whiteColor];
    lable.text = AsciiString(@"FAQ");
    lable.textAlignment = NSTextAlignmentCenter;
    [self addSubview:lable];
    
    //
    UIButton *closeButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [closeButton setImage:[UIImage imageNamed:@"icon_glclose"] forState:UIControlStateNormal];
    [closeButton addTarget:self action:@selector(ht_closeAction) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:closeButton];
    [closeButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.mas_equalTo(lable.mas_centerY);
        make.left.mas_equalTo(0);
        make.size.mas_equalTo(40);
    }];
    
    
    self.var_tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, LR_StatusBarAndNavigationBarHeight + 40, SCREEN_WIDTH, SCREEN_HEIGHT - (LR_StatusBarAndNavigationBarHeight + 40)) style:UITableViewStylePlain];
    [self addSubview:self.var_tableView];
    self.var_tableView.delegate = self;
    self.var_tableView.dataSource = self;
    self.var_tableView.bounces = NO;
    self.var_tableView.backgroundColor = [UIColor clearColor];
    self.var_tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.var_tableView.rowHeight = UITableViewAutomaticDimension;
    self.var_tableView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
    [self.var_tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"CELLString_FamilyQuestionTableViewCell"];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 2;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CELLString_FamilyQuestionTableViewCell" forIndexPath:indexPath];
    [self lgjeropj_cellAction:cell andIndexPath:indexPath];
    return cell;
}

- (void)lgjeropj_cellAction:(UITableViewCell *)cell andIndexPath:(NSIndexPath *)indexPath
{
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.backgroundColor = [UIColor clearColor];
    
    if (self.var_fDataArray.count > 0) {
        cell.textLabel.text = self.var_fDataArray[indexPath.section*2 + indexPath.row];
        cell.textLabel.numberOfLines = 0;
        cell.textLabel.font = [UIFont systemFontOfSize:14];
        if (indexPath.row == 0) {
            cell.textLabel.textColor = [UIColor whiteColor];
        }else {
            cell.textLabel.textColor = [UIColor grayColor];
        }
    }
}

- (void)ht_closeAction
{
    [self removeFromSuperview];
}

@end
