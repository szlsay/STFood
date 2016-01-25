//
//  STCell.h
//  STFood
//
//  Created by https://github.com/STShenZhaoliang/STFood  on 16/1/25.
//  Copyright © 2016年 ST. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface STCell : UITableViewCell
/**
 *  1.Cell的复用
 *
 *  @param tableView <#tableView description#>
 *
 *  @return <#return value description#>
 */
+ (instancetype)cellWithTableView:(UITableView*)tableView;

/**
 *  2.设置视图
 */
- (void)setupUI;
@end
