//
//  SortCatalogs.h
//  travelInter
//
//  Created by https://github.com/STShenZhaoliang/STFood on 16/01/25
//  Copyright (c) leowu. All rights reserved.
//

#import <Foundation/Foundation.h>

@class SortTags;

@interface SortCatalogs : NSObject

@property (nonatomic, copy) NSString *icon_f;

@property (nonatomic, copy) NSString *color;

@property (nonatomic, strong) NSArray<SortTags *> *tags;

@property (nonatomic, copy) NSString *ID;

@property (nonatomic, copy) NSString *type;

@property (nonatomic, copy) NSString *name;

@property (nonatomic, copy) NSString *icon;

@end