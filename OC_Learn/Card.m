//
//  Card.m
//  OC_Learn
//
//  Created by 叶泽群 on 09/11/2017.
//  Copyright © 2017 叶泽群. All rights reserved.
//

#import "Card.h"

@implementation Card

-(id)initWithContactName:(NSString *)name andPhoneName:(NSString *)number{
    if(self = [super init]){
        _contactName = name;
        _phoneNumber = number;
    }
    return self;
}

-(NSString *)getContactName{
    return _contactName;
}

-(NSString *)getPhoneName{
    return _phoneNumber;
}

-(void)setContactName:(NSString *)name{
    _contactName = name;
    
}

-(void)setPhoneNumber:(NSString *)phoneNumber{
    _phoneNumber = phoneNumber;
}
-(void)setContactName:(NSString *)name andWithPhoneNumebr:(NSString *)PhoneName{
    _contactName = name;
    _phoneNumber = PhoneName;
    
}


-(BOOL)sortedByContactName:(Card *)card{
    if(([self -> _contactName compare:card ->_contactName]) == NSOrderedAscending){
        return NO;
    }else{
        return YES;
    }
}

-(BOOL)sortedByPhoneNumber:(Card *)card{
    if(([self -> _phoneNumber compare:card -> _phoneNumber]) == NSOrderedDescending){
        return YES;
    }else{
        return NO;
    }
}

-(void)printCardObject{
    NSLog(@"ContactName = %@ , PhoneNumber = %@",[self getContactName],[self getPhoneName]);
}


@end
