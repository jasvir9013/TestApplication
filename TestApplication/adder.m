//
//  adder.m
//  TestApplication
//
//  Created by Administrator on 10/03/18.
//  Copyright © 2018 Administrator. All rights reserved.
//

#import "adder.h"

@implementation adder

-(id)initWithInitialNumber:(NSInteger)initialNumber
{
    total = initialNumber;
    return self;
}

-(void)addNumber:(NSInteger)newNumber
{
    total = total+newNumber;
}

-(NSInteger)getTotal
{
    return total;
}

@end
