//
//  main.m
//  OC_Pro
//
//  Created by 叶泽群 on 15/11/2017.
//  Copyright © 2017 叶泽群. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Student.h"
#import "select_tool.h"
#import "select_tool+PrintDogClass.h"
#import "NSString+Reverse.h"

//1.选择器：选择器是发送消息的机制，通过@selector（方法名）或者创建SEL类型的变量来调用执行方法
//C语言函数指针

int add(int a,int b){
    return a+b;
}
//类别：主要给类扩展方法，通常类中提供的方法不符合需求，可以通过类别语法给当前类扩展
//类扩展：给类扩展实例变量及方法,实现实例变量及方法的私有化

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        //点语法方便其他语言转移
        
        //直接通过函数名调用函数
        NSLog(@"add = %i",add(3,4));
        
        //********通过函数指针调用函数***********
        int (*pfuntion)(int,int) = add;
        
        NSLog(@"add = %i",pfuntion(10,5));
        
        
        //创建选择器
        SEL sel = @selector(dogEat);
        
        select_tool *tool = [select_tool alloc];
        
        //对于选择器中保存的方法需要判断选择器中的方法是否实现，
        // 若未实现则只能在运行时才会内存报错，编译器不能检查出错误
        
        if([tool respondsToSelector:sel]){
             [tool performSelector:sel]; //执行选择器performSelector
        }
       //用方法名的字符串对象生成选择器
        SEL *sel2 = NSSelectorFromString(@"dogBark:");
        if([tool respondsToSelector:sel2]){
            [tool performSelector:sel2 withObject:[NSNumber numberWithInt:5]];
        }
        //用方法名的C语言字符串，生成选择器
        SEL sel3 = sel_getUid("dogBark:");
        
        if([tool respondsToSelector:sel3]){
            [tool dogBark:[NSNumber numberWithInt:5]];
        }
        
       //获取选择器中的方法名字符串对象
        NSLog(@"name = %@",NSStringFromSelector(sel));
       //C语言的字符串
        NSLog(@"name =%s",sel_getName(sel2));
        
        NSMutableArray *nameArray = [NSMutableArray arrayWithObjects:@"rihoko",@"mawen ting",@"tokido_saya", nil];
        //回调：传入选择器作为方法的参数
        [nameArray sortedArrayUsingSelector:@selector(compare:)];
        
        NSLog(@"name = %@",nameArray);
        
        Person *ll = [[Person alloc] init];
        
        ll.name = @"rihoko";
        ll.age = 17;
        NSLog(@"name = %@ age = %li",ll.name,ll.age);
       
        
        //点语法放在“=”运算符的左边等价于对应的setter方法
        //没有放在“=”运算符的左边等价于对应的getter方法
        ll.weight = 60;
        ll.address = @"Pairs";
        
        NSLog(@"%@,%li,%li,%@",ll.name,ll.age,ll.weight,ll.address);
        
        
        Student *pr = [Student alloc];
        
        
        
        pr.Place = @"kk";
        pr.age = 17;
        pr.name = @"rihoko";
        pr.arrayCourse = @[@"math",@"art",@"phyize"];
        
        NSLog(@"%@,%li,%@,%@",pr.getterPlace,pr.age,pr.name,pr.arrayCourse);
        
        
        select_tool * newTool = [select_tool alloc];
        newTool.name = @"xt";
        [newTool printDog];
        
        
        NSString *name = @"mawenting";
        NSLog(@"name = %@",[NSString reverseString:name]);
        
    }
    return 0;
}
