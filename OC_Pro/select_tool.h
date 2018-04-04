//
//  select_tool.h
//  OC_Pro
//
//  Created by 叶泽群 on 15/11/2017.
//  Copyright © 2017 叶泽群. All rights reserved.
//

#import <Foundation/Foundation.h>
//1.选择器：选择器是发送消息的机制，通过@selector（方法名）或者创建SEL类型的变量来调用执行方法
//C语言函数指针


//类别：主要给类扩展方法，通常类中提供的方法不符合需求，可以通过类别语法给当前类扩展

@interface select_tool : NSObject
{
    NSString * _name;
}


-(void)dogEat;
-(void)dogBark:(NSNumber *)num;
@property NSString * name;

@end
