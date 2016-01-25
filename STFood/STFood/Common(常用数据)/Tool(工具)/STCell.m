//
//  STCell.m
//  STFood
//
//  Created by https://github.com/STShenZhaoliang/STFood  on 16/1/25.
//  Copyright © 2016年 ST. All rights reserved.
//

#import "STCell.h"

@implementation STCell


+ (instancetype)cellWithTableView:(UITableView*)tableView
{
    NSString *className = NSStringFromClass([self class]);
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:className];
    if (cell == nil) {
        cell = [[[super class] alloc]initWithStyle:UITableViewCellStyleDefault
                                   reuseIdentifier:className];
    }
    return (STCell *)cell;
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style
              reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self setupUI];
    }
    return self;
}

- (void)setupUI
{
    [self.contentView setBackgroundColor:[STColor colorControllerBackground]];
    [self setSelectionStyle:UITableViewCellSelectionStyleNone];
}


- (void)layoutSubviews
{
    [super layoutSubviews];
    
    [self.subviews enumerateObjectsUsingBlock:^(__kindof UIView * _Nonnull subView, NSUInteger idx, BOOL * _Nonnull stop) {
        if ([subView isKindOfClass:NSClassFromString(@"_UITableViewCellSeparatorView")]) {
         // !!! : 统一修改系统Cell的下边线
        }
    }];
    
}

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
