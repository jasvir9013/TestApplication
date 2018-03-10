//
//  Employee.m
//  TestApplication
//
//  Created by Administrator on 10/03/18.
//  Copyright © 2018 Administrator. All rights reserved.
//

#import "Employee.h"

@implementation Employee

-(id)initWithName:(NSString *)name andAge:(NSString *)age andEducation:(NSString *)education
{
    personName = name;
    personAge = age;
    employeeEducation = education;
    return self;
}

-(void)print
{
    NSLog(@"name : %@",personName);
    NSLog(@"age : %@",personAge);
    NSLog(@"education : %@",employeeEducation);
}
@end
