//
//  Model.h
//  extension
//
//  Created by kobe on 16/12/6.
//  Copyright © 2016年 Gust50. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface User : NSObject
@property(nonatomic,strong)NSString *name;
@property(nonatomic,strong)NSString *icon;
@end

@interface Model : NSObject
@property (copy, nonatomic) NSString *text;
@property (strong, nonatomic) User *user;/* 其他模型类型 */
@property (strong, nonatomic) Model *retweetedStatus;/* 自我模型类型 */
@end

@interface Ad : NSObject
@property (copy, nonatomic) NSString *image;
@property (copy, nonatomic) NSString *url;
@end

@interface StatusResult : NSObject
/** 数组中存储模型Status类型数据 */
@property (strong, nonatomic) NSMutableArray *statuses;
/** 数组中存储模型Ad类型数据 */
@property (strong, nonatomic) NSArray *ads;
@property (strong, nonatomic) NSNumber *totalNumber;
@end

@interface first : NSObject
@property(nonatomic,strong)NSString *CourseName;
@end

@interface second : NSObject
@property(nonatomic,strong)NSMutableArray *ClassList;
@end

@interface three :NSObject
@property(nonatomic,strong)NSMutableArray *StepList;
@end
