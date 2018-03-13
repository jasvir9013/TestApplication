//
//  SampleClass.m
//  TestApplication
//
//  Created by Administrator on 12/03/18.
//  Copyright © 2018 Administrator. All rights reserved.
//

#import "SampleClass.h"

@implementation SampleClass

-(void)performActionWithCompletion:(CompletionBlock)completionBlock
{
    NSLog(@"Action Performed");
    completionBlock();
}
@end
