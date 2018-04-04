//
//  NSString+Reverse.m
//  OC_Pro
//
//  Created by 叶泽群 on 16/11/2017.
//  Copyright © 2017 叶泽群. All rights reserved.
//

#import "NSString+Reverse.h"

@implementation NSString (Reverse)

+(NSString *)reverseString:(NSString *)aString{
    NSString *str = @"";
    for(NSInteger i =aString.length-1; i >= 0; i--){
     str = [str stringByAppendingString:[NSString stringWithFormat:@"%C",[aString characterAtIndex:i]]];//把修改对象传递给指针对象
    }
    return str;
}
@end
