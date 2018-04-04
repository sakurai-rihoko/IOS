//
//  Fraction.m
//  OC_Learn
//
//  Created by 叶泽群 on 20/10/2017.
//  Copyright © 2017 叶泽群. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction
-(id)initWith:(NSInteger)numerator :(NSInteger)denominator{
    self = [super init];
    if(self){
        self->_numerator = numerator;
        self->_denominator = denominator;
    }
    return self;
}

-(void)setNumerator:(NSInteger)numerator{
    self->_numerator = numerator;
}

-(void)setDenominator:(NSInteger)denominator{
    self->_denominator = denominator;
}

-(void)setNumerator:(NSInteger)numerator andDenominator:(NSInteger)denominator{
    self->_numerator = numerator;
    self->_denominator = denominator;
}

-(NSInteger)getNumerator{
    return self->_numerator;
}

-(NSInteger)getDenominator{
    return self->_denominator;
}

-(void)addFraction:(Fraction *)otherFraction{
// 分子运算以下类推   self->_numerator = [self getNumerator] * [otherFraction getDenominator] +
//                       [self getDenominator] * [otherFraction getNumerator];

    [self setNumerator:([self getNumerator] * [otherFraction getDenominator] +
                        [self getDenominator] * [otherFraction getNumerator])];
    
    [self setDenominator:([self getDenominator] * [otherFraction getDenominator])];
}


-(void)minusFraction:(Fraction *)otherFraction{
    [self setNumerator:([self getNumerator] * [otherFraction getDenominator] -
                        [self getDenominator] * [otherFraction getNumerator])];
    [self setDenominator:([self getDenominator] * [otherFraction getDenominator])];
}

-(void)multFraction:(Fraction *)otherFraction{
    [self setNumerator:([self getNumerator] * [otherFraction getNumerator])];
    [self setDenominator:([self getDenominator]*[otherFraction getDenominator])];
}

-(void)divFraction:(Fraction *)otherFraction{
    [self setNumerator:([self getNumerator] * [otherFraction getDenominator])];
    [self setDenominator:([self getDenominator] * [otherFraction getNumerator])];
    
    
    
}
//********************
//约分
//辗转相除法求最大公约数
//*********************
-(void)reduce{
    NSInteger tempN = self->_numerator;
    NSInteger tempD = self->_denominator;
    NSInteger maxCommonDivisor = tempN % tempD;
    while(maxCommonDivisor){
        tempN = tempD;
        tempD = maxCommonDivisor;
        maxCommonDivisor = tempN % tempD;
    }
    maxCommonDivisor = tempD;
    
    self->_numerator = self->_numerator / maxCommonDivisor;
    self->_denominator = self->_denominator / maxCommonDivisor;
}




-(void)printFraction{
    NSLog(@"the Fraction is :%li/%li",[self getNumerator],[self getDenominator]);
}






@end
