//
//  Student.m
//  OC_Pro2
//
//  Created by 叶泽群 on 16/11/2017.
//  Copyright © 2017 叶泽群. All rights reserved.
//

#import "Student.h"

@implementation Student
@synthesize stuNumber = _stuNumber,score = _score;


-(void)printInfo{
    NSLog(@"name = %@,age = %li,stuNum = %li,score = %li",self.name,self.age,self.stuNumber,self.score);
}
@end
