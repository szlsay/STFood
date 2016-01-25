//
//  RecipeHomeM.m
//  STFood
//
//  Created by https://github.com/STShenZhaoliang/STFood on 16/1/25.
//  Copyright © 2016年 ST. All rights reserved.
//

#import "RecipeHomeM.h"
#import "RecipeHomeA.h"
#import "RecipeHomeIs.h"
@implementation RecipeHomeM

+ (NSDictionary *)objectClassInArray
{
    return @{@"a":[RecipeHomeA class], @"is":[RecipeHomeIs class]};
}
@end
