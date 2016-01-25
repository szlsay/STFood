//
//  RecipeHomeHeader.h
//  Pods
//
//  Created by https://github.com/STShenZhaoliang/STFood  on 16/01/25
//  Copyright (c) __ORGANIZATIONNAME__. All rights reserved.
//

#import <Foundation/Foundation.h>

@class RecipeHomeFm,RecipeHomeRr,RecipeHomeFt,RecipeHomeFts,RecipeHomeBs;

@interface RecipeHomeHeader : NSObject

@property (nonatomic, strong) NSArray<RecipeHomeBs *> *bs;

@property (nonatomic, strong) RecipeHomeFm *fm;

@property (nonatomic, strong) RecipeHomeRr *rr;

@property (nonatomic, strong) NSArray<NSNumber *> *q;

@property (nonatomic, strong) RecipeHomeFt *ft;

@end