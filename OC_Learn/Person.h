//
//  Person.h
//  OC_Learn
//
//  Created by 叶泽群 on 19/10/2017.
//  Copyright © 2017 叶泽群. All rights reserved.
//

#import <Foundation/Foundation.h>
//command+control+上下，快速切换类声明和定义
//C语言为防止头文件重复包含，需要用预编译指令#ifndef XXX.h  #define XXX.h #endif
//OC不需要考虑重复包含 import已经包括去除重复包含
//！！！Important *:在C/C++中为指针，在OC中为对对象的引用
@interface Person : NSObject
{
    NSString *_name;
    NSInteger _age;
    //在类中直接访问：_name = name
    //间接访问 通过方法的调用访问
    //self指针直接访问
}
//id 对象返回 类似void *
-(id)init;
-(id)initWith:(NSString * )name :(NSInteger)age;
-(void)setName:(NSString *)name andAge:(NSInteger)age;
-(void)setName:(NSString *)name;
-(void)setAge:(NSInteger)age;


-(NSString *)getName;
-(NSInteger)getAge;

-(void)printInfo:(const id)person;
-(void)print;


+(void)testPerson;






@end
