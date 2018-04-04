//
//  Student.h
//  OC_Pro2
//
//  Created by 叶泽群 on 16/11/2017.
//  Copyright © 2017 叶泽群. All rights reserved.
//

#import "Person.h"

@interface Student : Person
{
    NSInteger _stuNumber;
    NSInteger _score;
}
@property (nonatomic,assign) NSInteger stuNumber;
@property (nonatomic,assign) NSInteger score;



-(void)printInfo;
@end
