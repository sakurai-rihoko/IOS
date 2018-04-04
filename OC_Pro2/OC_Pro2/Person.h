//
//  Person.h
//  OC_Pro2
//
//  Created by 叶泽群 on 16/11/2017.
//  Copyright © 2017 叶泽群. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

{
    NSString* _name;
    NSInteger _age;
@protected//（默认）受保护的实例变量，在当前类内可以直接访问，子类可以直接继承，在类外不可直接访问，可以通过方法的调用直接访问。
    float _weight;
@private float _height;//私有实例变量，当前类可以直接访问，子类不能继承，子类可以通过非私有的父类方法进行间接访问，在类外不能直接访问
@public NSString * _place;//公有的实例变量，在当前类可以直接访问，子类可以直接继承，在类外也可以直接访问
    
    
    
}

@property (nonatomic,copy)NSString * name;
@property (nonatomic,assign)NSInteger age;
@property (nonatomic,assign)float weight;
@property(nonatomic,assign)float height;
@property (nonatomic,copy)NSString * firstName;//如果property没有大括号中的属性定义则为private属性
@end
