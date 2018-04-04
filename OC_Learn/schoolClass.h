//
//  schoolClass.h
//  OC_Learn
//
//  Created by 叶泽群 on 07/11/2017.
//  Copyright © 2017 叶泽群. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StudentX.h"

@interface schoolClass : NSObject

{
    NSString *_className;
    NSMutableArray *_stuList;
    
}

-(id)initWithClassName:(NSString *)className;
-(NSString *)getClassName;
-(void)setClassName:(NSString *)className;

-(void)addStudentMember:(StudentX *)student;
-(void)addStudentMember:(StudentX *)student ByIndex:(NSInteger)index;
-(void)removeStudentMember:(StudentX *)student;
-(void)removeStudentMember:(StudentX *)student ByIndex:(NSInteger)index;
-(void)replaceStudentMember:(StudentX *)student ByIndex:(NSInteger)index;
-(void)showStuList;


-(void)sortedByNumber;
-(void)sortedByScore;
-(void)sortedByName;

+(void)testMyClass;

-(NSInteger)getTheStuListCount;




@end
