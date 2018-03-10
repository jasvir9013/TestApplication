//
//  Square.h
//  TestApplication
//
//  Created by Administrator on 10/03/18.
//  Copyright © 2018 Administrator. All rights reserved.
//

#import "Shape.h"

@interface Square : Shape
{
    float lenght;
}
-(id)initWithSide:(float)side;
-(void)calculateArea;

@end
