//
//  TabBarController.m
//  STFood
//
//  Created by https://github.com/STShenZhaoliang/STFood on 16/1/22.
//  Copyright © 2016年 ST. All rights reserved.
//

#import "TabBarController.h"
#import "NavigationController.h"
#import "TabBar.h"
@interface TabBarController ()
@property (nonatomic, strong)NSArray<TabBar *> *arrayTabBar; 
@end

@implementation TabBarController

#pragma mark - --- lift cycle 生命周期 ---

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    for (TabBar *tabBar in self.arrayTabBar) {
        [self addChildController:tabBar.controllerName
                           title:tabBar.title
                       imageName:tabBar.imageName
               selectedImageName:tabBar.imageSelectName];
    }
}

#pragma mark - --- delegate 视图委托 ---

#pragma mark - --- event response 事件相应 ---

#pragma mark - --- private methods 私有方法 ---

/**
 *  1.添加一个子控制器
 *
 *  @param childName     子控制器名称
 *  @param title         标题
 *  @param image         图片
 *  @param selectedImage 选中的图片
 */
- (void)addChildController:(NSString *)childController
                     title:(NSString *)title
                 imageName:(NSString *)imageName
         selectedImageName:(NSString *)selectedImageName
{
    // 1.设置子控制器的默认设置
    UIViewController *controller = [NSClassFromString(childController) new];
    [controller setTitle:title]; // 同时设置tabbar和navigationBar的文字
    [controller.view setBackgroundColor:[STColor colorControllerBackground]];
    [controller setAutomaticallyAdjustsScrollViewInsets:NO];
    
    // 2.设置子控制器的图片
    controller.tabBarItem.image = [[UIImage imageNamed:imageName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    controller.tabBarItem.selectedImage = [[UIImage imageNamed:selectedImageName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    // 3.设置文字的样式
    NSMutableDictionary *dictionaryText = [NSMutableDictionary dictionary];
    dictionaryText[NSForegroundColorAttributeName] = [STColor colorTabBarNormal];
    NSMutableDictionary *dictionaryTextSelect = [NSMutableDictionary dictionary];
    
    dictionaryTextSelect[NSForegroundColorAttributeName] = [STColor colorTabBarSelected];
    [controller.tabBarItem setTitleTextAttributes:dictionaryText forState:UIControlStateNormal];
    [controller.tabBarItem setTitleTextAttributes:dictionaryTextSelect forState:UIControlStateSelected];
    
    // 4.先给外面传进来的小控制器 包装 一个导航控制器
    NavigationController *naviController = [[NavigationController alloc] initWithRootViewController:controller];
    // 5.添加为子控制器
    [self addChildViewController:naviController];
}
#pragma mark - --- getters and setters 属性 ---

- (NSArray *)arrayTabBar
{
    if (!_arrayTabBar) {
        NSString *path = [[NSBundle mainBundle]pathForResource:@"TabBar"
                                                        ofType:@"json"];
        NSData *data = [NSData dataWithContentsOfFile:path
                                              options:NSDataReadingMappedIfSafe
                                                error:nil];
        NSArray *arrayData = [NSJSONSerialization JSONObjectWithData:data
                                                             options:NSJSONReadingMutableContainers
                                                               error:nil];
        
        NSMutableArray *arrayTabBar = [NSMutableArray array];
        for (NSDictionary *dictionary in arrayData) {
            TabBar *tabBar = [TabBar mj_objectWithKeyValues:dictionary];
            [arrayTabBar addObject:tabBar];
        }
        _arrayTabBar = arrayTabBar;
    }
    return _arrayTabBar;
}

@end
