//
//  main.m
//  OC_Pro2
//
//  Created by 叶泽群 on 16/11/2017.
//  Copyright © 2017 叶泽群. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"
/*面向对象语言的特点：封装 继承 多态
 继承也叫派生，子类继承父类，在父类的继承派生自己的实例变量及方法
 */

//@interface Student : Person
//
//@end


//子类会继承父类，子类拥有父类的非私有的实例变量和非私有的方法
//子类实例变量构成 = 父类实例变量 + 子类自定义的实例遍历
//子类方法构成 = 父类非私有方法 + 子类自定义的方法

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        Student * stu = [Student alloc];
        stu.weight = 56.7;
        
        
        
    }
    return 0;
}
