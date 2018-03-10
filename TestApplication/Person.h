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
    NSString *personName;
    NSString *personAge;
}

-(id)initWithName:(NSString*)name andAge:(NSString*)age;
-(void)print;
@end
