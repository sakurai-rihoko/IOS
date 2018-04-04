//
//  LrcManage.m
//  OC_Learn
//
//  Created by 叶泽群 on 09/11/2017.
//  Copyright © 2017 叶泽群. All rights reserved.
//

#import "LrcManage.h"
#import "LircItem.h"
#define  LrcPath @"/Users/tokido_saya/Documents/IOS Developer/OC_Learn/123.txt"
//类扩展能够实现实例变量或者方法，类扩展能够实现实例变量及方法的私有化
@interface LrcManage()

-(BOOL)parseLrcFile:(NSString *)lrcUrlParh;
-(void)parseLrcTitle:(NSString *)lineStr;
-(void)parseLrcAuther:(NSString *)lineStr;
-(void)parseLrcItem:(NSString *)lineStr;
-(float)parseLrcTime:(NSString *)timeStr;
@end

@implementation LrcManage


-(id)initWithLrcFile:(NSString *)lrcUrlPath{
    self = [super init];
    if(self){
        _lrcList = [NSMutableArray array];
        [self parseLrcFile:lrcUrlPath];
        
        
    }
    return self;
}

-(BOOL)parseLrcFile:(NSString *)lrcUrlParh{
    //读取歌词文件
    NSString * fileContent = [NSString stringWithContentsOfFile:lrcUrlParh encoding:NSUTF8StringEncoding error:nil];
    if(!fileContent){
        return NO;
    }
    NSArray *lineArray = [fileContent componentsSeparatedByString:@"\n"];
    NSInteger linecout = [lineArray count];
    for(NSInteger i = 0;i < linecout;i++){
        NSString *lineStr = [lineArray objectAtIndex:i];
        if([lineStr isEqualToString:@""]){
            continue;
        }else if([lineStr hasPrefix:@"[ti:"]){
            //解析歌曲名
            [self parseLrcTitle:lineStr];
        }else if([lineStr hasPrefix:@"[ar"]){
            //解析歌手
            [self parseLrcAuther:lineStr];
        }else{
            //解析歌词
            [self parseLrcItem:lineStr];
        }
    }
    //对歌词的词条进行排序
    [_lrcList sortUsingSelector:@selector(isSortByTime:)];
    return YES;
}

-(void)parseLrcTitle:(NSString *)lineStr{
    NSInteger len = [lineStr length];
    _title = [lineStr substringWithRange:NSMakeRange(4, len-4-1)];
}

-(void)parseLrcAuther:(NSString *)lineStr{
    NSInteger len = [lineStr length];
    _auther = [lineStr substringWithRange:NSMakeRange(4, len-4-1)];
}

-(void)parseLrcItem:(NSString *)lineStr{
    NSArray *lrcArray = [lineStr componentsSeparatedByString:@"]"];
    NSInteger lrcCount = [lrcArray count];
    for(NSInteger i = 0;i < lrcCount -1;i++){
        LircItem *item = [LircItem alloc];
        [item setLrcTime:[self parseLrcTime:[lrcArray objectAtIndex:i]]];
        [item setLrcString:[lrcArray lastObject]];
        [_lrcList addObject:item];
        
    }
}

-(float)parseLrcTime:(NSString *)timeStr{
    NSString *minString = [timeStr substringWithRange:NSMakeRange(1, 2)];
    NSString *secString = [timeStr substringFromIndex:4];
    return [minString intValue]*60 + [secString floatValue];
}


-(void)showLrcItem{
    for(LircItem * item in _lrcList){
        [item printLrcItem];
    }
}

+(void)userInterface{
    LrcManage *manager = [[LrcManage alloc] initWithLrcFile:@"/Users/tokido_saya/Documents/IOS Developer/OC_Learn/123.txt"];
    [manager showLrcItem];
}
@end
