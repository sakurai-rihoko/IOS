//
//  Person.m
//  OC_Pro
//
//  Created by 叶泽群 on 15/11/2017.
//  Copyright © 2017 叶泽群. All rights reserved.
//

#import "Person.h"


//@interface Person()
//
//@end  私有化接口

@implementation Person


//
//@synthesize weight = _weight,address = _address,height = _height,workPlace = _workPlace;//设置关联实例变量，避免定义混乱。，自动展开.
-(id)initWithName:(NSString *)name{
    if(self = [super init]){
        _name = name;
    }
    return self;
}



@end
