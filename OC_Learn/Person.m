//
//  Person.m
//  OC_Learn
//
//  Created by 叶泽群 on 19/10/2017.
//  Copyright © 2017 叶泽群. All rights reserved.
//

#import "Person.h"

@implementation Person


-(id)init{
    
    self = [super init];
    if(self)/*检查父类构造方法是否初始化成功 */{
        _name = @"mwt";
        _age = 27;
    }
    return self;
}
-(id)initWith:(NSString *)name :(NSInteger)age{
    self = [super init];
    if(self){
        _name = name;
        _age =age;
    }
    return self;
}


-(void)setName:(NSString *) name{
//    _name = name;
//    [self setName:name];
    
    self->_name = name;
}
-(void)setAge:(NSInteger)age{
    _age = age;
}

-(void)setName:(NSString *)name andAge:(NSInteger)age{
    _name = name;
    _age = age;
}

-(NSString *)getName{
    return _name;
}

-(NSInteger)getAge{
    return _age;
}

//id <==> void * *-->@
-(void)printInfo:(const id)person{
    NSLog(@"name = %@,age = %li",[person getName],[person getAge]);
}
-(void)print{
    NSLog(@"name = %@,age = %li",_name,_age);
}
+(void)testPerson{
    
    Person *person = [[Person alloc]/*【类 alloc】类对象创建及申请内存*/ init];
   /*【object func】<==>object.func()
    */
    [person printInfo:person];
    
//    printInfo:person;
    
    
    
}
@end
