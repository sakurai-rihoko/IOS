//
//  Book.m
//  OC_Learn
//
//  Created by 叶泽群 on 19/10/2017.
//  Copyright © 2017 叶泽群. All rights reserved.
//

#import "Book.h"

@implementation Book

-(id)init{
    self = [super init];
    if(self){
        self->_name = @"Objective-C";
        self->_price = 100.00;
    }
    return self;
}
//self在实例方法中，指向类的实例（调用者对象）
-(id)initWith:(NSString *)name :(float)price{
   self = [super init];//super是一个编译器符号，通过super关键字可以调用父类方法,父类初始化流程
    if(self){
        self->_name = name;
        self->_price =price;//子类初始化流程;
    }
    return self;
}

-(NSString *)getName{
    return self->_name;
}

-(float)getPrice{
    return self->_price;
}
//类方法只能给类本身调用；
//self在类方法中代表类本身
+(id)constructBookWith:(NSString *)name :(float)price{
    return [[self alloc] initWith:name :price];
}


@end
