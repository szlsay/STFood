//
//  RecipeHomeR.h
//  STFood
//
//  Created by https://github.com/STShenZhaoliang/STFood on 16/1/25.
//  Copyright © 2016年 ST. All rights reserved.
//

#import <Foundation/Foundation.h>
@class RecipeHomeA;
@class RecipeHomeTags;
@interface RecipeHomeR : NSObject

@property (nonatomic, assign) NSInteger ID;

@property (nonatomic, copy) NSString *n;

@property (nonatomic, copy) NSString *img;

@property (nonatomic, assign) NSInteger stc;

@property (nonatomic, assign) NSInteger dc;

@property (nonatomic, assign) NSInteger fc;

@property (nonatomic, copy) NSString *an;

@property (nonatomic, copy) NSString *p;

@property (nonatomic, assign) NSInteger vc;

@property (nonatomic, strong) RecipeHomeA *a;

@property (nonatomic, strong)NSArray<RecipeHomeTags *> *tags; 
@end
