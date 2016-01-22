//
//  STBarButtonItem.h
//  STFood
//
//  Created by https://github.com/STShenZhaoliang/STFood on 16/1/22.
//  Copyright © 2016年 ST. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface STBarButtonItem : UIBarButtonItem
+ (STBarButtonItem *)barButtonItemWithImageName:(NSString *)imageName
                                         target:(id)target
                                         action:(SEL)action;
@end
