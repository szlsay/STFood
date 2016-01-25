//
//  SortCatalogs.m
//  travelInter
//
//  Created by https://github.com/STShenZhaoliang/STFood on 16/01/25
//  Copyright (c) leowu. All rights reserved.
//

#import "SortCatalogs.h"
#import "SortTags.h"

@implementation SortCatalogs

+ (NSDictionary *)objectClassInArray{
    return @{@"tags" : [SortTags class]};
}

@end
