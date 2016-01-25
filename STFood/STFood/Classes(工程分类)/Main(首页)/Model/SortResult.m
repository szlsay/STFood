//
//  SortResult.m
//  travelInter
//
//  Created by https://github.com/STShenZhaoliang/STFood on 16/01/25
//  Copyright (c) leowu. All rights reserved.
//

#import "SortResult.h"
#import "SortCatalogs.h"

@implementation SortResult

+ (NSDictionary *)objectClassInArray{
    return @{@"catalogs" : [SortCatalogs class]};
}

@end
