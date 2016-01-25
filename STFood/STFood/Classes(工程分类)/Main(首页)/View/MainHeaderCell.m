//
//  MainHeaderCell.m
//  STFood
//
//  Created by https://github.com/STShenZhaoliang/STFood  on 16/1/25.
//  Copyright © 2016年 ST. All rights reserved.
//

#import "MainHeaderCell.h"

#import "RecipeHomeModel.h"
#import "RecipeHomeResult.h"
#import "RecipeHomeHeader.h"
#import "RecipeHomeRr.h"

@interface MainHeaderCell()
@property (nonatomic, strong, nullable)UIImageView  *imageBackground;
@property (nonatomic, strong, nullable)UILabel      *labelUp;
@property (nonatomic, strong, nullable)UILabel      *labelDown;

@end

@implementation MainHeaderCell

- (void)setupUI
{
    [super setupUI];
    
    [self.contentView addSubview:self.imageBackground];
    [self.imageBackground addSubview:self.labelUp];
    [self.imageBackground addSubview:self.labelDown];
}


- (void)layoutSubviews
{
    [super layoutSubviews];
    
    CGFloat imageX = STMargin;
    CGFloat imageY = 0;
    CGFloat imageW = ScreenWidth - 2 * imageX;
    CGFloat imageH = imageW / STRatioImage;
    self.imageBackground.frame = CGRectMake(imageX, imageY, imageW, imageH);
    
    CGFloat upW = imageW;
    CGFloat upH = 19;
    CGFloat upX = 0;
    CGFloat upY = imageH/2 - 30;
    self.labelUp.frame = CGRectMake(upX, upY, upW, upH);
    
    CGFloat downW = imageW;
    CGFloat downH = 22;
    CGFloat downX = 0;
    CGFloat downY = imageH/2 + STMargin;
    self.labelDown.frame = CGRectMake(downX, downY, downW, downH);
    
}

- (void)setModel:(RecipeHomeModel *)model
{
    _model = model;
    
    RecipeHomeRr *rr = model.result.header.rr;
    
    [self.imageBackground sd_setImageWithURL:[NSURL URLWithString:rr.bg] placeholderImage:nil];
    [self.labelUp setText:rr.ud];
    [self.labelDown setText:rr.t];
}


- (UIImageView *)imageBackground
{
    if (!_imageBackground) {
        _imageBackground = [[UIImageView alloc]init];
        [_imageBackground setClipsToBounds:YES];
        [_imageBackground setContentMode:UIViewContentModeScaleAspectFill];
        [_imageBackground.layer setCornerRadius:2];
        [_imageBackground.layer setMasksToBounds:YES];
    }
    return _imageBackground;
}

- (UILabel *)labelUp
{
    if (!_labelUp) {
        _labelUp = [[UILabel alloc]init];
        [_labelUp setFont:[UIFont systemFontOfSize:19]];
        [_labelUp setTextColor:[UIColor whiteColor]];
        [_labelUp setShadowOffset:CGSizeMake(1, 1)];
        [_labelUp setShadowColor:RGBA(0, 0, 0, 155.0 / 255)];
        [_labelUp setTextAlignment:NSTextAlignmentCenter];
    }
    return _labelUp;
}

- (UILabel *)labelDown
{
    if (!_labelDown) {
        _labelDown = [[UILabel alloc]init];
        [_labelDown setFont:[UIFont systemFontOfSize:22]];
        [_labelDown setTextColor:[UIColor whiteColor]];
        [_labelDown setShadowOffset:CGSizeMake(1, 1)];
        [_labelDown setShadowColor:RGBA(0, 0, 0, 155.0 / 255)];
        [_labelDown setTextAlignment:NSTextAlignmentCenter];
    }
    return _labelDown;
}

@end
