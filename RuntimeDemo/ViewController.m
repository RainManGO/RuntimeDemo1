//
//  ViewController.m
//  RuntimeDemo
//
//  Created by apple on 2017/6/2.
//  Copyright © 2017年 ZY. All rights reserved.
//

/*
 利用Runtime不引用头文件，
 动态创建类对象，并调用方法
 */

#import "ViewController.h"
#import "Person.h"
#import <objc/message.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
/*
 将OC翻译成Runtime动态加载语言
 */
    
    Person  *  person  =  [[Person  alloc]init];
/*
   1.objc_msgSend   给Person类发消息让他调用 alloc init
 
 api:
 OBJC_EXPORT id objc_msgSend(id self, SEL op, ...)
 OBJC_AVAILABLE(10.0, 2.0, 9.0, 1.0);
 
   2.objc_getClass  返回这个类的isa指针
 
 OBJC_EXPORT Class objc_getClass(const char *name)
 OBJC_AVAILABLE(10.0, 2.0, 9.0, 1.0);
 
   3.@selector(alloc) 方法选择器，同样可以通过sel_registerName注册方法名  @selector(alloc)==sel_registerName("alloc")
 */
    
//    id person   =  objc_msgSend(objc_getClass("Person"),sel_registerName("alloc"),sel_registerName("init"));
    
     [person logShowTest];
//    objc_msgSend(person, sel_registerName("logShowTest"));
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
