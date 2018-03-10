//
//  adder.h
//  TestApplication
//
//  Created by Administrator on 10/03/18.
//  Copyright © 2018 Administrator. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface adder : NSObject
{
    NSInteger total; // private member
}

-(id)initWithInitialNumber:(NSInteger)initialNumber;

// addNumber and getTotal are the eg of data abstraction
// The public members addNum and getTotal are the interfaces to the outside world and a user needs to know them to use the class.
-(void)addNumber:(NSInteger)newNumber;
-(NSInteger)getTotal;

@end
