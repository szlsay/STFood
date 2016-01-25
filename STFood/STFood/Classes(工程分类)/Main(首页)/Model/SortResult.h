//
//  SortResult.h
//  travelInter
//
//  Created by https://github.com/STShenZhaoliang/STFood on 16/01/25
//  Copyright (c) leowu. All rights reserved.
//

#import <Foundation/Foundation.h>

@class SortCatalogs,SortTags;

@interface SortResult : NSObject

@property (nonatomic, strong) NSArray<SortCatalogs *> *catalogs;

@property (nonatomic, strong) NSArray *bs;

@end