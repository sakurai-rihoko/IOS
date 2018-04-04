//
//  StudentX.m
//  OC_Learn
//
//  Created by 叶泽群 on 09/11/2017.
//  Copyright © 2017 叶泽群. All rights reserved.
//

#import "StudentX.h"

@implementation StudentX
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


-(BOOL)isSortByScore:(StudentX *)student{
    if([self getScore] > [student getScore]){
        return NO;
    }else{
        return YES;
    }
}


-(BOOL)isSortByNum:(StudentX *)student{
    if([self getNum] > [student getNum]){
        return YES;
    }else{
        return NO;
    }
}


-(BOOL)isSortedByName:(StudentX *)student{
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
