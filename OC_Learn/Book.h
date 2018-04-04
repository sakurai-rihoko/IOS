//
//  Book.h
//  OC_Learn
//
//  Created by 叶泽群 on 19/10/2017.
//  Copyright © 2017 叶泽群. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Book : NSObject
{
    NSString * _name;
    float _price;
}
/*
 1.构造方法即初始化方法（C++构造函数）：初始化alloc创建的对象清0，给对象的实例变量赋值；
 2.带参数的构造方法必须以initWith 开头，W必须大写
 */
-(id)init;
-(id)initWith:(NSString*)name :(float)price;
-(NSString *)getName;
-(float)getPrice;

//类方法创建对象
+(id)constructBookWith:(NSString *)name :(float)price;



@end
