//
//  PhoneBook.h
//  OC_Learn
//
//  Created by 叶泽群 on 09/11/2017.
//  Copyright © 2017 叶泽群. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface PhoneBook : NSObject
{
    NSString * _masterName;
    NSMutableArray * _cardList;
}


-(id)initWithMasterName:(NSString * )masterName;
-(NSString *)getMasterName;
-(void)resetMasterName:(NSString *)masterName;

-(void)addContactCard:(Card *)aCard;
-(void)removeContactCard:(Card *)aCard;

-(void)showPhoneBook;

-(void)sortedPhoneBookByContactName;
-(void)sortedPhoneBookByPhoneNumber;

+(void)testPhoneBook;




@end
