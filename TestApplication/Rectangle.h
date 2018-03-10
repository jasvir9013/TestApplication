//
//  Rectangle.h
//  TestApplication
//
//  Created by Administrator on 10/03/18.
//  Copyright © 2018 Administrator. All rights reserved.
//

#import "Shape.h"

@interface Rectangle : Shape
{
    float lenght;
    float breadth;
}

-(id)initWithLenght :(float)lenght andBreadth:(float)breadth;

@end
