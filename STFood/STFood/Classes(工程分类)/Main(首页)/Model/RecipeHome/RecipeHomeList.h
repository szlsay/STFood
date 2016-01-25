//
//  RecipeHomeList.h
//  Pods
//
//  Created by https://github.com/STShenZhaoliang/STFood  on 16/01/25
//  Copyright (c) __ORGANIZATIONNAME__. All rights reserved.
//

#import <Foundation/Foundation.h>

@class RecipeHomeBs,RecipeHomeR, RecipeHomeM;

@interface RecipeHomeList : NSObject

@property (nonatomic, assign) NSInteger type;

@property (nonatomic, strong) NSArray<RecipeHomeBs *> *bs;

@property (nonatomic, strong) RecipeHomeR *r;

@property (nonatomic, strong) RecipeHomeM *m;

@end