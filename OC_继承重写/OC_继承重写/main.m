//
//  main.m
//  OC_继承重写
//
//  Created by 叶泽群 on 17/11/2017.
//  Copyright © 2017 叶泽群. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"
#import "Cat.h"
#import "Header.h"
//重写：子类重新实现从父类继承的方法
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        
        
        
        Student* stu = [Student alloc];
        stu.age = 17;
        stu.name = @"AMS";
        stu.stuNum = 11001;
        stu.score = 100;
        [stu printInfo];
        Person *per = stu;
        [per printInfo];//父类指针可以指向子类对象，调用方法的实现依据子类方法的实现而决定
    }
    
    Cat *aCat = [Cat alloc];
    
    
    
    Header *hea = [Header alloc];
    [hea askAnimalFood:aCat];
    
    return 0;
}
