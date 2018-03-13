//
//  Person+Relations.m
//  TestApplication
//
//  Created by Administrator on 13/03/18.
//  Copyright © 2018 Administrator. All rights reserved.
//

#import "Person+Relations.h"

@implementation Person (Relations)


-(void)addFriend :(Person*)aFriend
{
    [[self friends] addObject:aFriend];
}

-(void)removeFriend :(Person*)aFriend
{
    [[self friends]removeObject:aFriend];
}

-(void)sayHelloToFriend
{
    for (Person *friend in [self friends]) {
        NSLog(@"Hello %@",[friend name]);
    }
}

@end
