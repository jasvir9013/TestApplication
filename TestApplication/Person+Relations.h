//
//  Person+Relations.h
//  TestApplication
//
//  Created by Administrator on 13/03/18.
//  Copyright © 2018 Administrator. All rights reserved.
//

#import "Person.h"

@interface Person (Relations)

-(void)addFriend :(Person*)aFriend;
-(void)removeFriend :(Person*)aFriend;
-(void)sayHelloToFriend;
@end
