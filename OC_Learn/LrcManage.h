//
//  LrcManage.h
//  OC_Learn
//
//  Created by 叶泽群 on 09/11/2017.
//  Copyright © 2017 叶泽群. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LrcManage : NSObject

{
    NSString *_title;//歌曲
    NSString *_auther;//歌曲art
    NSMutableArray *_lrcList;//保存词条
}


-(id)initWithLrcFile:(NSString *)lrcUrlPath;

//-(void)userInterface;
//-(void)setTitle:(NSString *)title;
//-(void)setAuther:(NSString *)auther;
//-(void)setLrcList:(NSString *)LrcStr;

+(void)userInterface;
@end
