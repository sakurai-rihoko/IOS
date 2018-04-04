//
//  Student.h
//  OC_继承重写
//
//  Created by 叶泽群 on 17/11/2017.
//  Copyright © 2017 叶泽群. All rights reserved.
//

#import "Person.h"

@interface Student : Person
{
    NSInteger _stuNum;
    NSInteger score;
}
@property(nonatomic,assign)NSInteger stuNum;
@property(nonatomic,assign)NSInteger score;

@end
