//
//  MyManager.m
//  TestApplication
//
//  Created by Administrator on 16/03/18.
//  Copyright © 2018 Administrator. All rights reserved.
//

#import "MyManager.h"

@implementation MyManager

+(id)sharedManager
{
    static MyManager *sharedManager = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedManager = [[self alloc]init];
    });
    return sharedManager;
}

-(id)init
{
    if (self = [super init]) {
        _demoString = [NSString stringWithFormat:@"this is demo for Singleton"];
    }
    return self;
}
@end
