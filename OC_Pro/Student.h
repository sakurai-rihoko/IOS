//
//  Student.h
//  OC_Pro
//
//  Created by 叶泽群 on 15/11/2017.
//  Copyright © 2017 叶泽群. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject
//属性修饰符

/*assign 默认（缺省） -->直接赋值 修饰基本数据类型

 _age = age; */

//copy 先release 再copy 修饰字符串类型


//retain 先release 再return 修饰除基本类型及字符串类型以外的实例变量类型


/*
//非原子性    原子性
//
 多线程中使用，防止内存泄露，实例变量取值错误，为了强调访问实例变量的效率，通常用nonatomic
//nonatomic atomic默认（缺省）
*/

/*
 给setter和getter方法重新命名
 setter = setName:
 getter = getName:

 */

/*
 readonly 只读
 readwrite 可读可写
 
 */
-(void)saveName:(NSString * )name;

@property (assign,nonatomic)NSInteger age;//assign 通常修饰基本数据类型 NSInteger float int long等
@property (nonatomic,copy)NSString * name;//copy  通常修饰字符串类型  NSString NSMutableArray
@property (nonatomic,retain)NSArray *arrayCourse;//retain 通常除基本数据和字符串类型如：修饰数组类型 NSArray NSMutableArray
@property (setter=setPlace:,getter=getterPlace) NSString *workPlace;

@property (readonly) NSInteger StuNumber;

@end
