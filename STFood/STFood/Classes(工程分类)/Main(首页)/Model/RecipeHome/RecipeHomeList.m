//
//  RecipeHomeList.m
//  Pods
//
//  Created by https://github.com/STShenZhaoliang/STFood  on 16/01/25
//  Copyright (c) __ORGANIZATIONNAME__. All rights reserved.
//

#import "RecipeHomeList.h"
#import "RecipeHomeBs.h"
#import "RecipeHomeR.h"
#import "RecipeHomeM.h"

@implementation RecipeHomeList

+ (NSDictionary *)objectClassInArray{
    return @{@"bs" : [RecipeHomeBs class], @"r": [RecipeHomeR class], @"m":[RecipeHomeM class]};
}


@end
