//
//  Rectangle.m
//  TestApplication
//
//  Created by Administrator on 10/03/18.
//  Copyright © 2018 Administrator. All rights reserved.
//

#import "Rectangle.h"

@implementation Rectangle

-(id)initWithLenght:(float)rlenght andBreadth:(float)rbreadth
{
    lenght = rlenght;
    breadth = rbreadth;
    return self;
}

-(void)calculateArea
{
    area = lenght*breadth;
}

@end
