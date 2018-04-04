//
//  Student.h
//  OC_Learn
//
//  Created by 叶泽群 on 06/11/2017.
//  Copyright © 2017 叶泽群. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Course.h"


@interface Student : NSObject
{
    NSString* _studentName;
    NSInteger _age;
    NSInteger _score;
    NSInteger _num;
    
     Course * _Course1;
     Course * _Course2;
     Course * _Course3;
    
    
}

-(id)initWithName:(NSString *)name andWithAge:(NSInteger)age andWithScore:(NSInteger)score andWithNum:(NSInteger)num;
-(NSString *)getName;
-(NSInteger)getAge;
-(NSInteger)getScore;
-(NSInteger)getNum;


-(void)setName:(NSString *)name;
-(void)setAge:(NSInteger)age;
-(void)setName:(NSString *)name andAge:(NSInteger)age;
-(void)setScore:(NSInteger)score;
-(void)setNum:(NSInteger)Num;

-(NSString *)getAllCourseNames;
-(NSString *)getAllTeacherNames;
-(NSInteger)getAllCourseTime;

-(void)setCourse:(Course *)newcourse byIndex:(NSInteger)index;
-(void)printStudentInfo;
-(void)printStudentUpdateInfo;

-(NSMutableArray *)getAllCourseNamesArray;
-(NSMutableArray *)getAllTeacherNamesArray;

-(BOOL)isSortByScore:(Student *)student;//按成绩降序
-(BOOL)isSortByNum:(Student *)student;//按学号升序

-(BOOL)isSortedByName:(Student *)student;//按名字升序


+(void)testStudent;







@end
