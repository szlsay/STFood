//
//  RecipeHomeFt.h
//  Pods
//
//  Created by https://github.com/STShenZhaoliang/STFood  on 16/01/25
//  Copyright (c) __ORGANIZATIONNAME__. All rights reserved.
//

#import <Foundation/Foundation.h>

@class RecipeHomeFts;

@interface RecipeHomeFt : NSObject

@property (nonatomic, copy) NSString *t;

@property (nonatomic, copy) NSString *u;

@property (nonatomic, strong) NSArray<RecipeHomeFts *> *fts;

@end