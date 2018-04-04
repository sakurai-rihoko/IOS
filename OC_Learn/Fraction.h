//
//  Fraction.h
//  OC_Learn
//
//  Created by 叶泽群 on 20/10/2017.
//  Copyright © 2017 叶泽群. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject
{
    NSInteger _numerator;
    NSInteger _denominator;
}
-(id)initWith:(NSInteger)numerator :(NSInteger)denominator;

-(void)setNumerator:(NSInteger)numerator;
-(void)setDenominator:(NSInteger)denominator;
-(void)setNumerator:(NSInteger)numerator andDenominator:(NSInteger)denominator;

-(NSInteger)getNumerator;
-(NSInteger)getDenominator;

-(void)addFraction:(Fraction *)otherFraction;
-(void)minusFraction:(Fraction *)otherFraction;
-(void)multFraction:(Fraction *)otherFraction;
-(void)divFraction:(Fraction *)otherFraction;
-(void)reduce;
-(void)printFraction;




@end
