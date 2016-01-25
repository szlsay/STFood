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
@interface MainController ()
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
//    [self setupDishHome];
    
    NSLog(@"%s, %@", __FUNCTION__, self.model);
}

#pragma mark - --- delegate 视图委托 ---

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
