//
//  RecipeHomeHeader.m
//  Pods
//
//  Created by https://github.com/STShenZhaoliang/STFood  on 16/01/25
//  Copyright (c) __ORGANIZATIONNAME__. All rights reserved.
//

#import "RecipeHomeHeader.h"
#import "RecipeHomeBs.h"

@implementation RecipeHomeHeader

+ (NSDictionary *)objectClassInArray{
    return @{@"bs" : [RecipeHomeBs class]};
}

@end
