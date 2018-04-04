//
//  Course.h
//  OC_Learn
//
//  Created by 叶泽群 on 06/11/2017.
//  Copyright © 2017 叶泽群. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Course : NSObject
{
    NSString  *_courseName;
    NSString  *_teacherName;
    NSInteger _courseTime;
}


-(id)initWithCourseName:(NSString *)courseName  withCourseTime:(NSInteger)courseTime;

-(NSString *)getCourseName;
-(NSString *)getTeacherName;
-(NSInteger)getCourseTime;


-(void)setTeacherName:(NSString *)TeacherName;

-(void)printCourse;





@end
