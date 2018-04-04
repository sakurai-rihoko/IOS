//
//  LircItem.h
//  OC_Learn
//
//  Created by 叶泽群 on 09/11/2017.
//  Copyright © 2017 叶泽群. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LircItem : NSObject

{
    float _lrcTime;
    NSString *_lrcString;
}
-(id)initWithLrcTime:(float)lrcTime andWithLrcString:(NSString *)lrcString;


-(void)setLrcTime:(float)time;
-(void)setLrcString:(NSString *)lrcString;


-(NSString *)getLrcString;
-(float)getLrcTime;


-(void)printLrcItem;

//按照歌词时间进行排序
-(BOOL)isSortByTime:(LircItem *)aItem;
@end
