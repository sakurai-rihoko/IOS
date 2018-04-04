//
//  Student.m
//  OC_Learn
//
//  Created by 叶泽群 on 06/11/2017.
//  Copyright © 2017 叶泽群. All rights reserved.
//

#import "Student.h"

@implementation Student

-(id)initWithName:(NSString *)name andWithAge:(NSInteger)age andWithScore:(NSInteger)score andWithNum:(NSInteger)num{
    if(self = [super init]){
        self -> _studentName = name;
        self -> _age = age;
        self -> _score =score;
        self -> _num = num;
    }
    return self;
}

-(NSString *)getName{
    return self -> _studentName;
}

-(NSInteger)getAge{
    return self -> _age;
}

-(NSInteger)getScore
{
    return self -> _score;
}

-(NSInteger)getNum{
    return self -> _num;
}

-(void)setName:(NSString *)name{
    self -> _studentName = name;
}

-(void)setAge:(NSInteger)age{
    self -> _age = age;
}
-(void)setNum:(NSInteger)Num{
    self -> _num = Num;
}

-(void)setName:(NSString *)name andAge:(NSInteger)age{
    self -> _studentName = name;
    self -> _age = age;
    
}

-(void)setScore:(NSInteger)score{
    self -> _score = score;
}

-(NSMutableArray *)getAllCourseNamesArray{

    NSMutableArray *CourseNameArr = nil;
    if(_Course1){
        [CourseNameArr arrayByAddingObject:[_Course1 getCourseName]];
    }

    if(_Course2){
        [CourseNameArr arrayByAddingObject:[_Course2 getCourseName]];
    }

    if(_Course3){
        [CourseNameArr arrayByAddingObject:[_Course3 getCourseName]];
    }


    return CourseNameArr;
}

-(NSMutableArray *)getAllTeacherNamesArray{
    NSMutableArray *CourseNameArr = nil;
    if(_Course1){
        [CourseNameArr arrayByAddingObject:[_Course1 getTeacherName]];
    }

    if(_Course2){
        [CourseNameArr arrayByAddingObject:[_Course2 getTeacherName]];
    }

    if(_Course3){
        [CourseNameArr arrayByAddingObject:[_Course3 getTeacherName]];
    }

    return CourseNameArr;
}







-(NSString *)getAllCourseNames{
    NSString *str = @"";
    if(_Course1){
        str = [str stringByAppendingString:[_Course1 getCourseName]];
          str = [str stringByAppendingString:@" "];
    }
    if(_Course2){
        str = [str stringByAppendingString:[_Course2 getCourseName]];
          str = [str stringByAppendingString:@" "];
    }
    if(_Course3){
        str = [str stringByAppendingString:[_Course3 getCourseName]];
          str = [str stringByAppendingString:@" "];
    }

    return str;
}

-(NSString *)getAllTeacherNames{
    NSString *str = @"";
    if(_Course1){
        str = [str stringByAppendingString:[_Course1 getTeacherName]];
        str = [str stringByAppendingString:@" "];
    }
    if(_Course2){
        str = [str stringByAppendingString:[_Course2 getTeacherName]];
          str = [str stringByAppendingString:@" "];
    }
    if(_Course3){
        str = [str stringByAppendingString:[_Course3 getTeacherName]];
          str = [str stringByAppendingString:@" "];
    }

     return str;
}

-(NSInteger)getAllCourseTime{
    NSInteger time = 0;
    if(_Course1){
        time += [_Course1 getCourseTime];
    }

    if(_Course2){
        time += [_Course2 getCourseTime];
    }

    if(_Course3){
        time += [_Course3 getCourseTime];
    }



    return time;


}


-(void)setCourse:(Course *)newcourse byIndex:(NSInteger)index{
    if(index == 1){
        _Course1 = newcourse;
    }else if(index == 2 ){
        _Course2 = newcourse;
    }else if(index == 3){
        _Course3 = newcourse;
    }else{
        NSLog(@"you must push number 1-3");
    }
}

-(void)printStudentInfo{
    NSLog(@"student num is %li name is %@,age is %li,score is %li\n",[self getNum],[self getName],[self getAge],[self getScore]);
    [self -> _Course1 printCourse];
    [self -> _Course2 printCourse];
    [self -> _Course3 printCourse];
}

+(void)testStudent{
    Student *testStudent = [[Student alloc] initWithName:@"x" andWithAge:18 andWithScore:100 andWithNum:10010];
    Course *newCourse1 = [[Course alloc] initWithCourseName:@"Objective-C" withCourseTime:30];
    [newCourse1 setTeacherName:@"li"];
    Course *newCourse2 = [[Course alloc] initWithCourseName:@"C++" withCourseTime:20];
    [newCourse2 setTeacherName:@"joy"];
    Course *newCourse3 = [[Course alloc] initWithCourseName:@"Python" withCourseTime:15];
    [newCourse3 setTeacherName:@"tim"];
    
    [testStudent setCourse:newCourse1 byIndex:1];
    [testStudent setCourse:newCourse2 byIndex:2];
    [testStudent setCourse:newCourse3 byIndex:3];
    
    [testStudent printStudentInfo];
    NSLog(@"%@",[testStudent getAllCourseNames]);
    NSLog(@"%@",[testStudent getAllTeacherNames]);
    NSLog(@"%li",[testStudent getAllCourseTime]);
   
}

-(BOOL)isSortByScore:(Student *)student{
    if([self getScore] > [student getScore]){
        return NO;
    }else{
        return YES;
    }
}


-(BOOL)isSortByNum:(Student *)student{
    if([self getNum] > [student getNum]){
        return YES;
    }else{
        return NO;
    }
}


-(BOOL)isSortedByName:(Student *)student{
    //return [[self getName] compare:[student getName]];升序
    NSComparisonResult ret = [[self getName] compare:[student getName]];
    if(ret == NSOrderedDescending){
        return YES;
    }else if(ret == NSOrderedAscending){
        return NO;
    }else{
        return NO;
    }
}

-(void)printStudentUpdateInfo{
    NSLog(@"the student name = %@ age = %li score = %li num = %li\n",[self getName],[self getAge],[self getScore],[self getNum]);
}



@end
