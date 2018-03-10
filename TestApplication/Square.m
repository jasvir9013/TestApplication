//
//  Square.m
//  TestApplication
//
//  Created by Administrator on 10/03/18.
//  Copyright © 2018 Administrator. All rights reserved.
//

#import "Square.h"

@implementation Square

-(id)initWithSide:(float)side
{
    lenght = side;
    return self;
}

-(void)calculateArea
{
    area = lenght*lenght;
}

- (void)printArea{
    NSLog(@"The area of square is %f", area);
}

@end
