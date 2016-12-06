//
//  ViewController.m
//  extension
//
//  Created by kobe on 16/12/6.
//  Copyright © 2016年 Gust50. All rights reserved.
//

#import "ViewController.h"
#import <MJExtension.h>
#import "Model.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSDictionary *dict1 = @{
                           @"text" : @"Agree!Nice weather!",
                           @"user" : @{
                                   @"name" : @"Jack",
                                   @"icon" : @"lufy.png"
                                   },
                           @"retweetedStatus" : @{
                                   @"text" : @"Nice weather!",
                                   @"user" : @{
                                           @"name" : @"Rose",
                                           @"icon" : @"nami.png"
                                           }
                                   }
                           };
    Model *model = [Model mj_objectWithKeyValues:dict1];
    NSLog(@"%@%@%@",model.text,model.user,model.retweetedStatus);
    NSLog(@"%@%@",model.user.name,model.user.icon);
    
    NSDictionary *dict2 = @{
                           @"statuses" : @[
                                   @{
                                       @"text" : @"Nice weather!",
                                       @"user" : @{
                                               @"name" : @"Rose",
                                               @"icon" : @"nami.png"
                                               }
                                       },
                                   @{
                                       @"text" : @"Go camping tomorrow!",
                                       @"user" : @{
                                               @"name" : @"Jack",
                                               @"icon" : @"lufy.png"
                                               }
                                       }
                                   ],
                           @"ads" : @[
                                   @{
                                       @"image" : @"ad01.png",
                                       @"url" : @"http://www.ad01.com"
                                       },
                                   @{
                                       @"image" : @"ad02.png",
                                       @"url" : @"http://www.ad02.com"
                                       }
                                   ],
                           @"totalNumber" : @"2014"
                           };
    
    //字典转模型，支持模型的数组属性里面又装着模型
    StatusResult *result = [StatusResult mj_objectWithKeyValues:dict2];
    //打印博主信息
    for (Model *status in result.statuses) {
        NSString *text = status.text;
        NSString *name = status.user.name;
        NSString *icon = status.user.icon;
        NSLog(@"text=%@, name=%@, icon=%@", text, name, icon);
    }
    // text=Nice weather!, name=Rose, icon=nami.png
    // text=Go camping tomorrow!, name=Jack, icon=lufy.png
    //打印广告
    for (Ad *ad in result.ads) {
        NSLog(@"image=%@, url=%@", ad.image, ad.url);
    }
    NSDictionary *dict3 = @{
                            @"StepList":@[
                                   @{
                                       @"ClassList":@[
                                                  @{
                                             @"CourseName":@"小王"
                                                    }
                                                  ]
                                              
                                              
                                    }
                                         ]
                            
                            };
    
    three *_three = [three mj_objectWithKeyValues:dict3];
    for (second *_second in _three.StepList) {
        NSLog(@"第二个%@",_second.ClassList);
        for (first *_first in _second.ClassList) {
            NSLog(@"姓名%@",_first.CourseName);
        }
    }
    
    
}

@end
