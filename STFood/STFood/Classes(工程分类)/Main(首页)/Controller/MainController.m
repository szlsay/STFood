//
//  MainController.m
//  STFood
//
//  Created by https://github.com/STShenZhaoliang/STFood on 16/1/22.
//  Copyright © 2016年 ST. All rights reserved.
//

#import "MainController.h"
#import "SortController.h"
@interface MainController ()

@end

@implementation MainController

#pragma mark - --- lift cycle 生命周期 ---

- (void)viewDidLoad
{
    [super viewDidLoad];
    LxDBAnyVar(self);
    self.navigationItem.leftBarButtonItem = [STBarButtonItem barButtonItemWithImageName:@"navi_item_catalogs"
                                                                                 target:self
                                                                                 action:@selector(gotoSortController)];
}

#pragma mark - --- delegate 视图委托 ---

#pragma mark - --- event response 事件相应 ---

- (void)gotoSortController
{
    [self.navigationController pushViewController:[SortController new] animated:YES];
}

#pragma mark - --- private methods 私有方法 ---

#pragma mark - --- getters and setters 属性 ---

@end
