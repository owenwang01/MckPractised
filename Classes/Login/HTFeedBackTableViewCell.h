//
//  HTFeedBackTableViewCell.h
// 
//
//  Created by Apple on 2023/2/24.
//  Copyright © 2023 Apple. All rights reserved.
//

#import <UIKit/UIKit.h>
@class YYTextView;

NS_ASSUME_NONNULL_BEGIN

@interface HTFeedBackTableViewCell : UITableViewCell

@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) YYTextView *textView;

@end

NS_ASSUME_NONNULL_END
