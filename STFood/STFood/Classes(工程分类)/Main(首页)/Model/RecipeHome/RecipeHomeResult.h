//
//  RecipeHomeResult.h
//  Pods
//
//  Created by https://github.com/STShenZhaoliang/STFood on 16/01/25
//  Copyright (c) __ORGANIZATIONNAME__. All rights reserved.
//

#import <Foundation/Foundation.h>

@class RecipeHomeHeader,RecipeHomeFm,RecipeHomeRr,RecipeHomeFt,RecipeHomeFts,RecipeHomeBs,RecipeHomeList,RecipeHomeBs;

@interface RecipeHomeResult : NSObject

@property (nonatomic, copy) NSString *murl;

@property (nonatomic, copy) NSString *btmid;

@property (nonatomic, strong) NSArray<RecipeHomeList *> *list;

@property (nonatomic, strong) RecipeHomeHeader *header;

@end