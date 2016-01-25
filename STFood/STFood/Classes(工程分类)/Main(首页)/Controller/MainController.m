//
//  MainController.m
//  STFood
//
//  Created by https://github.com/STShenZhaoliang/STFood on 16/1/22.
//  Copyright © 2016年 ST. All rights reserved.
//

#import "MainController.h"
#import "SortController.h"

#import "RecipeHomeModel.h"
#import "MainApi.h"

#import "MainHeaderCell.h"

@interface MainController ()<UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong, nullable)UITableView *tableView; //
@property (nonatomic, strong, nullable)RecipeHomeModel *model; //
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
    
    [self.view addSubview:self.tableView];
}

#pragma mark - --- delegate 视图委托 ---

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 50;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    MainHeaderCell *cell = [MainHeaderCell cellWithTableView:tableView];
    [cell setModel:self.model];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return (ScreenWidth - 2*STMargin)/ STRatioImage;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 0.01;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return STMargin;
}

- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
{
    return [UIView new];
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    return [UIView new];
}

#pragma mark - --- event response 事件相应 ---

- (void)gotoSortController
{
    [self.navigationController pushViewController:[SortController new] animated:YES];
}

#pragma mark - --- private methods 私有方法 ---

- (void)setupDishHome
{
    MainApi *api = [[MainApi alloc]initWithUserid:@"0"];
    [api startWithCompletionBlockWithSuccess:^(YTKBaseRequest *request) {
        NSLog(@"%s, %@", __FUNCTION__, request.responseJSONObject);
    } failure:^(YTKBaseRequest *request) {
        NSLog(@"%s, %@", __FUNCTION__, request);
    }];
    
}

#pragma mark - --- getters and setters 属性 ---

- (UITableView *)tableView
{
    if (!_tableView) {
        CGFloat tableX = 0;
        CGFloat tableY = STNavigationBarY;
        CGFloat tableW = ScreenWidth - 2*tableX;
        CGFloat tableH = ScreenHeight - tableY - STControlSystemHeight;
        _tableView = [[UITableView alloc]initWithFrame:CGRectMake(tableX, tableY, tableW, tableH)
                                                 style:UITableViewStylePlain];
        [_tableView setDelegate:self];
        [_tableView setDataSource:self];
        [_tableView setBackgroundColor:[UIColor clearColor]];
        [_tableView setSeparatorStyle:UITableViewCellSeparatorStyleNone];
    }
    return _tableView;
}

- (RecipeHomeModel *)model
{
    if (!_model) {
        NSString *path = [[NSBundle mainBundle]pathForResource:@"RecipeHome" ofType:@"json"];
        NSData *data = [NSData dataWithContentsOfFile:path options:NSDataReadingMappedIfSafe error:nil];
        NSDictionary *dictionary = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
        _model = [RecipeHomeModel mj_objectWithKeyValues:dictionary];
    }
    return _model;
}
@end
