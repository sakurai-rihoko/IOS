//
//  StudentX.h
//  OC_Learn
//
//  Created by 叶泽群 on 09/11/2017.
//  Copyright © 2017 叶泽群. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StudentX : NSObject
{
    NSString* _studentName;
    NSInteger _age;
    NSInteger _score;
    NSInteger _num;
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


//-(void)printStudentInfo;
-(void)printStudentUpdateInfo;


-(BOOL)isSortByScore:(StudentX *)student;//按成绩降序
-(BOOL)isSortByNum:(StudentX *)student;//按学号升序

-(BOOL)isSortedByName:(StudentX *)student;//按名字升序


//+(void)testStudent;

@end
