//
//  runtimeTest.m
//  RuntimeDemo
//
//  Created by apple on 2017/6/2.
//  Copyright © 2017年 ZY. All rights reserved.
//

#import "runtimeTest.h"
#import "Person.h"
@implementation runtimeTest

-(instancetype)init{
    self = [super init];
    Person *  person = [[Person  alloc]init];
    [person logShowTest];
    return self;
}

@end
