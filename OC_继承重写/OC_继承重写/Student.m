//
//  Student.m
//  OC_继承重写
//
//  Created by 叶泽群 on 17/11/2017.
//  Copyright © 2017 叶泽群. All rights reserved.
//

#import "Student.h"

@implementation Student
//继承的方法不需要在声明
-(void)printInfo{
    NSLog(@"%@,%li,%li,%li",_name,_age,_stuNum,_score);
}
@end
