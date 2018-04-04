//
//  select_tool.m
//  OC_Pro
//
//  Created by 叶泽群 on 15/11/2017.
//  Copyright © 2017 叶泽群. All rights reserved.
//

//类别：主要给类扩展方法，通常类中提供的方法不符合需求，可以通过类别语法给当前类扩展

#import "select_tool.h"
@interface select_tool()
{
    NSInteger _age;
}
@property NSInteger _age;
-(void)printDogInfo;
@end

@implementation select_tool



-(void)dogEat{
    NSLog(@"Dog like to eat bone!!");
}


-(void)dogBark:(NSNumber *)num{
    NSInteger cnt = [num intValue];
    for(NSInteger i = 0; i < cnt ;i++){
        NSLog(@"WANG,WANG,WANG....");
    }
}
-(void)printDogInfo{
    NSLog(@"%@,%li",_name,_age);
}

@end
