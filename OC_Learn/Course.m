//
//  Course.m
//  OC_Learn
//
//  Created by 叶泽群 on 06/11/2017.
//  Copyright © 2017 叶泽群. All rights reserved.
//

#import "Course.h"

@implementation Course
//@synthesize _courseName;
-(id)initWithCourseName:(NSString *)courseName withCourseTime:(NSInteger)courseTime
{
    if(self = [super init]){
       self -> _courseName = courseName;
       self -> _courseTime = courseTime;
    }
    
    return self;
}

-(NSString *)getCourseName{
    return self -> _courseName;
}

-(NSString *)getTeacherName{
    return self -> _teacherName;
}

-(NSInteger)getCourseTime{
    return self -> _courseTime;
}



-(void)setTeacherName:(NSString *)TeacherName{
    self -> _teacherName = TeacherName;
}

-(void)printCourse{
    NSLog(@"the course'name is %@\n the course'teacher is %@\n the course'time is %li\n",[self getTeacherName],[self getTeacherName],[self getCourseTime]);
}

@end
