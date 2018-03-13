//
//  Person.m
//  TestApplication
//
//  Created by Administrator on 10/03/18.
//  Copyright © 2018 Administrator. All rights reserved.
//

#import "Person.h"

@implementation Person

-(id)initWithName:(NSString*)name andAge:(NSString*)age
{
    personName = name;
    personAge = age;
    return self;
}

-(void)print
{
    NSLog(@"name : %@",personName);
    NSLog(@"age : %@",personAge);
}

// category eg

-(id)init
{
    self = [super init];
    if (self) {
        _friends = [[NSMutableArray alloc]init];
    }
    return self;
}

-(void)sayHello
{
    NSLog(@"Say Hello to %@", _name);
}

-(void)sayGoodBye
{
    NSLog(@"Say goodbye to %@", _name);
}


@end
