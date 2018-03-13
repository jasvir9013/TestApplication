//
//  SampleClass.h
//  TestApplication
//
//  Created by Administrator on 12/03/18.
//  Copyright © 2018 Administrator. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Print.h"
typedef void(^CompletionBlock)();

@interface SampleClass : NSObject <printProtocolDelegate>

-(void)performActionWithCompletion:(CompletionBlock)completionBlock;

-(void)startAction;
@end
