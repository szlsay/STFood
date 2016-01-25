//
//  RecipeHomeR.m
//  STFood
//
//  Created by https://github.com/STShenZhaoliang/STFood on 16/1/25.
//  Copyright © 2016年 ST. All rights reserved.
//

#import "RecipeHomeR.h"
#import "RecipeHomeA.h"
#import "RecipeHomeTags.h"
@implementation RecipeHomeR
+ (NSDictionary *)replacedKeyFromPropertyName
{
    return @{@"ID":@"id"};
}

+ (NSDictionary *)objectClassInArray{
    return @{@"a":[RecipeHomeA class], @"tags":[RecipeHomeTags class]};
}
@end
