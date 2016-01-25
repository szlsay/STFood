//
//  RecipeHomeResult.m
//  Pods
//
//  Created by https://github.com/STShenZhaoliang/STFood on 16/01/25
//  Copyright (c) __ORGANIZATIONNAME__. All rights reserved.
//

#import "RecipeHomeResult.h"
#import "RecipeHomeList.h"

@implementation RecipeHomeResult

+ (NSDictionary *)objectClassInArray{
    return @{@"list" : [RecipeHomeList class]};
}

@end
