//
//  SortController.m
//  STFood
//
//  Created by https://github.com/STShenZhaoliang/STFood on 16/1/22.
//  Copyright © 2016年 ST. All rights reserved.
//

#import "SortController.h"
#import "SortModel.h"
@interface SortController ()
@property (nonatomic, strong, nullable)SortModel *model; //
@end

@implementation SortController

#pragma mark - --- lift cycle 生命周期 ---

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSLog(@"%s, %@", __FUNCTION__, self.model.state);
}

#pragma mark - --- delegate 视图委托 ---

#pragma mark - --- event response 事件相应 ---

#pragma mark - --- private methods 私有方法 ---

#pragma mark - --- getters and setters 属性 ---

- (SortModel *)model
{
    if (!_model) {
        NSString *path = [[NSBundle mainBundle]pathForResource:@"Sort" ofType:@"json"];
        NSData *data = [NSData dataWithContentsOfFile:path options:NSDataReadingMappedIfSafe error:nil];
        NSDictionary *dictionary = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
        _model = [SortModel mj_objectWithKeyValues:dictionary];
    }
    return _model;
}

@end
