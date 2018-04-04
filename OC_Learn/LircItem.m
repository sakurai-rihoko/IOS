//
//  LircItem.m
//  OC_Learn
//
//  Created by 叶泽群 on 09/11/2017.
//  Copyright © 2017 叶泽群. All rights reserved.
//

#import "LircItem.h"

@implementation LircItem

-(id)initWithLrcTime:(float)lrcTime andWithLrcString:(NSString *)lrcString{
    if(self = [super init]){
        _lrcTime = lrcTime;
        _lrcString = lrcString;
    }
    return self;
}

-(float)getLrcTime{
    return _lrcTime;
}

-(NSString *)getLrcString{
    return _lrcString;
}

-(void)setLrcTime:(float)time{
    _lrcTime = time;
}

-(void)setLrcString:(NSString *)lrcString{
    _lrcString = lrcString;
}




-(void)printLrcItem{
    NSLog(@"time:%.2f Lrc: %@",[self getLrcTime],[self getLrcString]);
}

-(BOOL)isSortByTime:(LircItem *)aItem{
    if([self getLrcTime] > [aItem getLrcTime]){
        return YES;
    }
    return NO;
}

@end
