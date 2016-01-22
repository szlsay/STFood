//
//  STConst.h
//  STFood
//
//  Created by https://github.com/STShenZhaoliang/STFood on 16/1/22.
//  Copyright © 2016年 ST. All rights reserved.
//

#import <Foundation/Foundation.h>

/** 1.返回一个RGBA格式的UIColor对象 */
#define RGBA(r, g, b, a) [UIColor colorWithRed:r/255.0f green:g/255.0f blue:b/255.0f alpha:a]

/** 2.返回一个RGB格式的UIColor对象 */
#define RGB(r, g, b) RGBA(r, g, b, 1.0f)

/** 3.屏幕尺寸 */
#define ScreenWidth  CGRectGetWidth([UIScreen mainScreen].bounds)
#define ScreenHeight CGRectGetHeight([UIScreen mainScreen].bounds)