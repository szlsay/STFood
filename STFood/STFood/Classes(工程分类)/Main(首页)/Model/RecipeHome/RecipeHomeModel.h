//
//  RecipeHomeModel.h
//  Pods
//
//  Created by https://github.com/STShenZhaoliang/STFood on 16/01/25
//  Copyright (c) __ORGANIZATIONNAME__. All rights reserved.
//

#import <Foundation/Foundation.h>

@class RecipeHomeResult,RecipeHomeHeader,RecipeHomeFm,RecipeHomeRr,RecipeHomeFt,RecipeHomeFts,RecipeHomeBs,RecipeHomeList,RecipeHomeBs;

@interface RecipeHomeModel : NSObject

@property (nonatomic, copy) NSString *state;

@property (nonatomic, strong) RecipeHomeResult *result;

@end