//
//  Person.h
//  OC_Pro
//
//  Created by 叶泽群 on 15/11/2017.
//  Copyright © 2017 叶泽群. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

{
//    NSString *_name;
//    NSInteger _age;
//    NSInteger _weight;
//    NSString * _address;
//    NSInteger _height;
//    NSString * _workPlace;
}
@property NSString *name;
@property NSInteger age;
@property NSString * address;
@property NSInteger weight;
@property NSInteger height;
@property NSString * workPlace;

-(id)initWithName:(NSString *)name;

@end
