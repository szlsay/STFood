//
//  TabBar.h
//  STFood
//
//  Created by https://github.com/STShenZhaoliang/STFood on 16/1/22.
//  Copyright © 2016年 ST. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface TabBar : NSObject
/** 1.TabBar的名称 */
@property (nonatomic, strong)NSString *title;
/** 2.控制器的名称 */
@property (nonatomic, strong)NSString *controllerName;
/** 3.TabBar图片的名称 */
@property (nonatomic, strong)NSString *imageName;
/** 4.TabBar高亮图片的名称 */
@property (nonatomic, strong)NSString *imageSelectName;

@end

NS_ASSUME_NONNULL_END

