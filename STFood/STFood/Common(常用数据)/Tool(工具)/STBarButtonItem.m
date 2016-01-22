//
//  STBarButtonItem.m
//  STFood
//
//  Created by https://github.com/STShenZhaoliang/STFood on 16/1/22.
//  Copyright © 2016年 ST. All rights reserved.
//

#import "STBarButtonItem.h"

@implementation STBarButtonItem
+ (STBarButtonItem *)barButtonItemWithImageName:(NSString *)imageName
                                         target:(id)target
                                         action:(SEL)action
{
    UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 22, 22)];
    [button setImage:[UIImage imageNamed:imageName]
            forState:UIControlStateNormal];
    [button addTarget:target
               action:action
     forControlEvents:UIControlEventTouchUpInside];
    STBarButtonItem *barButtonItem = [[STBarButtonItem alloc]initWithCustomView:button];
    return barButtonItem;
}
@end
