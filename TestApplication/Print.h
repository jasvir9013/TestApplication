//
//  Print.h
//  TestApplication
//
//  Created by Administrator on 13/03/18.
//  Copyright © 2018 Administrator. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol printProtocolDelegate

-(void)processCompleted;

@end

@interface Print : NSObject

{
    id delegate;
}

-(void)printDetails;
-(void)setDelegate:(id)newDelegate;

@end
