//
//  schoolClass.m
//  OC_Learn
//
//  Created by 叶泽群 on 07/11/2017.
//  Copyright © 2017 叶泽群. All rights reserved.
//

#import "schoolClass.h"

@implementation schoolClass

-(id)initWithClassName:(NSString *)className{
    if(self = [super init]){
        self -> _className = className;
        self -> _stuList =[NSMutableArray array];//必须初始化所有变量
    }
    return self;
    
}


-(NSString *)getClassName{
    return self -> _className;
}

-(void)setClassName:(NSString *)className{
    self -> _className = className;
}

-(void)addStudentMember:(StudentX *)astudent{
//    if([_stuList containsObject:student]){
//       [_stuList addObject:student];
//    }
     [self->_stuList addObject:astudent];
}

-(void)addStudentMember:(StudentX *)student ByIndex:(NSInteger)index{
    if(![self -> _stuList containsObject:student]){
        [self -> _stuList insertObject:student atIndex:index];
    }
}


-(void)removeStudentMember:(StudentX *)astudent{
    if([self -> _stuList containsObject:astudent]){
       [self -> _stuList removeObject:astudent];
    }
}

-(void)removeStudentMember:(StudentX *)student ByIndex:(NSInteger)index{
    if([[self->_stuList objectAtIndex:index] isEqualTo:student]){
        [self -> _stuList removeObjectAtIndex:index];
    }
}

-(void)replaceStudentMember:(StudentX *)student ByIndex:(NSInteger)index{
    if([self -> _stuList objectAtIndex:index]){
        [self ->_stuList replaceObjectAtIndex:index  withObject:student];
    }
}

-(void)showStuList{
    for(StudentX *stu in self->_stuList){
        [stu printStudentUpdateInfo];
    }
}


-(void)sortedByNumber{
    [_stuList sortUsingSelector:@selector(isSortByNum:)];
}

-(void)sortedByName{
    [_stuList sortUsingSelector:@selector(isSortedByName:)];
}

-(void)sortedByScore{
    [_stuList sortUsingSelector:@selector(isSortByScore:)];
}


-(NSInteger)getTheStuListCount{
    return [self -> _stuList count];
}

+(void)testMyClass{
    schoolClass *myClass = [[schoolClass alloc] initWithClassName:@"CC"];
    for(NSInteger i = 0;i < 10;i++){
        StudentX *stu = [[StudentX alloc]initWithName:[NSString stringWithFormat:@"stu%d",arc4random()%50+1] andWithAge:arc4random()%18+1 andWithScore:arc4random()%100+1 andWithNum:arc4random()%101];
       [myClass addStudentMember:stu];
        
    }
 
//    NSLog(@"%@",[myClass getClassName]);
//    NSLog(@"%li",[myClass getTheStuListCount]);
    
    [myClass showStuList];
    
}
@end
