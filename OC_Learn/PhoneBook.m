//
//  PhoneBook.m
//  OC_Learn
//
//  Created by 叶泽群 on 09/11/2017.
//  Copyright © 2017 叶泽群. All rights reserved.
//

#import "PhoneBook.h"

@implementation PhoneBook

-(id)initWithMasterName:(NSString *)masterName{
    if(self = [super init]){
        _masterName = masterName;
        _cardList = [NSMutableArray array];
    }
    return self;
}
-(void)resetMasterName:(NSString *)masterName{
    _masterName = masterName;
}

-(NSString * )getMasterName{
    return _masterName;
}

-(void)addContactCard:(Card *)aCard{
    if(![_cardList containsObject:aCard]){
        [_cardList addObject:aCard];
    }
}

-(void)removeContactCard:(Card *)aCard{
    
        [_cardList removeObject:aCard];
    
}


-(void)showPhoneBook{
    for(Card * card in _cardList){
        [card printCardObject];
    }
}


-(void)sortedPhoneBookByContactName{
    [self -> _cardList  sortUsingSelector:@selector(sortedByContactName:)];
}

-(void)sortedPhoneBookByPhoneNumber{
    [self -> _cardList sortUsingSelector:@selector(sortedByPhoneNumber:)];
}

+(void)testPhoneBook{
    PhoneBook *phoneBook = [[PhoneBook alloc] initWithMasterName:@"ny"];
    
    for (NSInteger i = 0; i<10;i++){
        Card *item = [[Card alloc]initWithContactName:[NSString stringWithFormat:@"联系人%d",arc4random()%50] andPhoneName:[NSString stringWithFormat:@"1815793%04d",arc4random()%10000]];
        [phoneBook addContactCard:item];
    }
    [phoneBook showPhoneBook];
    
    NSLog(@"-------按照电话号码排序后 :---------\n");
    [phoneBook sortedPhoneBookByPhoneNumber];
    [phoneBook showPhoneBook];
    
        NSLog(@"-------删除后 :---------\n");
    [phoneBook removeContactCard:(phoneBook ->_cardList[3])];
     [phoneBook showPhoneBook];
}



@end
