//
//  Print.m
//  TestApplication
//
//  Created by Administrator on 13/03/18.
//  Copyright © 2018 Administrator. All rights reserved.
//

#import "Print.h"

@implementation Print


-(void)printDetails
{
    NSLog(@"print detail");
    [delegate processCompleted];
}
-(void)setDelegate:(id)newDelegate
{
    delegate = newDelegate;
}

@end
