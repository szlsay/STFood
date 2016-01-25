//
//  RecipeHomeM.h
//  STFood
//
//  Created by https://github.com/STShenZhaoliang/STFood on 16/1/25.
//  Copyright © 2016年 ST. All rights reserved.
//

#import <Foundation/Foundation.h>
@class RecipeHomeA, RecipeHomeIs;
@interface RecipeHomeM : NSObject

@property (nonatomic, assign)NSInteger ID;
@property (nonatomic, copy)NSString *t;
@property (nonatomic, copy)NSString *b;
@property (nonatomic, copy)NSString *c;
@property (nonatomic, strong)RecipeHomeA *a;
@property (nonatomic, strong)NSArray<RecipeHomeIs *> *is; 
@end
