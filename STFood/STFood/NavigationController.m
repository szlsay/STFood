//
//  NavigationController.m
//  STFood
//
//  Created by https://github.com/STShenZhaoliang/STFood on 16/1/22.
//  Copyright © 2016年 ST. All rights reserved.
//

#import "NavigationController.h"

@interface NavigationController ()

@end

@implementation NavigationController

#pragma mark - --- lift cycle 生命周期 ---

#pragma mark - --- delegate 视图委托 ---

#pragma mark - --- event response 事件相应 ---

- (void)backViewController
{
    [self popViewControllerAnimated:YES];
}

#pragma mark - --- private methods 私有方法 ---

- (void)pushViewController:(UIViewController *)viewController
                  animated:(BOOL)animated
{
    // 1.设置TabBar的隐藏和控制器的属性
    self.edgesForExtendedLayout  = UIRectEdgeNone;
    [viewController.view setBackgroundColor:[STColor colorControllerBackground]];
    [viewController setAutomaticallyAdjustsScrollViewInsets:NO];
    
    // 2.设置视图
    if (self.viewControllers.count > 0) {
        // 1.自动显示和隐藏tabbar
        viewController.hidesBottomBarWhenPushed = YES;
        // 2.设置左边的Item
        viewController.navigationItem.leftBarButtonItem = [STBarButtonItem barButtonItemWithImageName:@"recipe_back"
                                                                                                title:@"返回"
                                                                                               target:self
                                                                                               action:@selector(backViewController)];
    }
    
    [super pushViewController:viewController animated:animated];
    
}
#pragma mark - --- getters and setters 属性 ---

@end
