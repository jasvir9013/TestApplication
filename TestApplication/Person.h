//
//  Person.h
//  TestApplication
//
//  Created by Administrator on 10/03/18.
//  Copyright © 2018 Administrator. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    // inheritance eg
    NSString *personName;
    NSString *personAge;
}

-(id)initWithName:(NSString*)name andAge:(NSString*)age;
-(void)print;

// category eg
@property(readonly) NSMutableArray *friends;
@property(copy) NSString *name;

-(void)sayHello;
-(void)sayGoodBye;

@end
