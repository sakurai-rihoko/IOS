//
//  Person.h
//  OC_继承重写
//
//  Created by 叶泽群 on 17/11/2017.
//  Copyright © 2017 叶泽群. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    NSString * _name;
    NSInteger _age;
}
@property(nonatomic,copy)NSString *name;
@property(nonatomic,assign)NSInteger age;

-(void)printInfo;

@end
