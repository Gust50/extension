//
//  Model.m
//  extension
//
//  Created by kobe on 16/12/6.
//  Copyright © 2016年 Gust50. All rights reserved.
//

#import "Model.h"

@implementation Model

@end

@implementation User

@end

@implementation Ad

@end

@implementation StatusResult
+ (NSDictionary *)mj_objectClassInArray{
    return @{ @"statuses" : @"Model",
              @"ads" : @"Ad"
              };
}
@end

@implementation first

@end

@implementation second
+ (NSDictionary *)mj_objectClassInArray{
    return @{ @"ClassList" : @"first"
              };
}
@end

@implementation three
+ (NSDictionary *)mj_objectClassInArray{
    return @{ @"StepList" : @"second"
              };
}
@end
