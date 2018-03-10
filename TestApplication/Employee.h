//
//  Employee.h
//  TestApplication
//
//  Created by Administrator on 10/03/18.
//  Copyright © 2018 Administrator. All rights reserved.
//

#import "Person.h"

@interface Employee : Person
{
    NSString *employeeEducation;
}

-(id)initWithName:(NSString *)name andAge:(NSString *)age andEducation:(NSString*)education;
-(void)print;
@end
