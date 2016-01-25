//
//  SortModel.h
//  travelInter
//
//  Created by https://github.com/STShenZhaoliang/STFood on 16/01/25
//  Copyright (c) leowu. All rights reserved.
//

#import <Foundation/Foundation.h>

@class SortResult,SortCatalogs,SortTags;

@interface SortModel : NSObject

@property (nonatomic, copy) NSString *state;

@property (nonatomic, strong) SortResult *result;

@end