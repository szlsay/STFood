//
//  MainApi.m
//  STFood
//
//  Created by https://github.com/STShenZhaoliang/STFood on 16/1/25.
//  Copyright © 2016年 ST. All rights reserved.
//

#import "MainApi.h"

@implementation MainApi
{
    NSString *_userid;
}

- (instancetype)initWithUserid:(NSString *)userid
{
    if (self = [super init]) {
        _userid = userid;
    }
    return self;
}

- (YTKRequestMethod)requestMethod
{
    return YTKRequestMethodPost;
}

- (NSString *)requestUrl
{
    return @"/dish/home/0/20";
}

- (id)requestArgument
{
    return @{@"user_id":_userid};
}


/**
 *  2.使用NSURLSession
 */

- (void)setupDataFromSession{
    //1.构造URL
    NSURL *url = [NSURL URLWithString:@"http://api.douguo.net/dish/home/0/20"];
    
    //2.构造Request
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
    
    //(1)设置为POST请求
    [request setHTTPMethod:@"POST"];
    
    //(2)超时
    [request setTimeoutInterval:5];
    
    //(3)设置请求头
    //[request setAllHTTPHeaderFields:nil];
    
    //(4)设置请求体
    NSString *bodyStr = @"user_id=0";
    NSData *bodyData = [bodyStr dataUsingEncoding:NSUTF8StringEncoding];
    
    //设置请求体
    [request setHTTPBody:bodyData];
    
    //3.构造Session
    NSURLSession *session = [NSURLSession sharedSession];
    
    //4.task
    NSURLSessionDataTask *task = [session dataTaskWithRequest:request
                                            completionHandler:^(NSData *data,
                                                                NSURLResponse *response,
                                                                NSError *error) {
                                                NSDictionary *dictionaryResult = [NSJSONSerialization JSONObjectWithData:data
                                                                                                                 options:NSJSONReadingMutableContainers
                                                                                                                   error:nil];
                                                NSLog(@"%s, %@", __FUNCTION__, dictionaryResult);
                                            }];
    
    //5.
    [task resume];

}


@end


