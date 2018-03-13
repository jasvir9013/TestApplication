//
//  SampleClass.h
//  TestApplication
//
//  Created by Administrator on 12/03/18.
//  Copyright © 2018 Administrator. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^CompletionBlock)();
@interface SampleClass : NSObject

-(void)performActionWithCompletion:(CompletionBlock)completionBlock;
@end
