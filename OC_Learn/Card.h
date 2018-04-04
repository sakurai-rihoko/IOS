//
//  Card.h
//  OC_Learn
//
//  Created by 叶泽群 on 09/11/2017.
//  Copyright © 2017 叶泽群. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject


{
    NSString *_contactName;
    NSString *_phoneNumber;
}
-(id)initWithContactName:(NSString *)name andPhoneName:(NSString *)number;
-(NSString *)getContactName;
-(NSString *)getPhoneName;
-(void)setContactName:(NSString *)name;
-(void)setPhoneNumber:(NSString *)phoneNumber;
-(void)setContactName:(NSString *)name andWithPhoneNumebr:(NSString *)PhoneName;

-(BOOL)sortedByContactName:(Card *)card;
-(BOOL)sortedByPhoneNumber:(Card *)card;

-(void)printCardObject;

@end
