//
//  MyManager.h
//  TestApplication
//
//  Created by Administrator on 16/03/18.
//  Copyright © 2018 Administrator. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyManager : NSObject

@property (nonatomic, retain) NSString *demoString;
+(id)sharedManager;

@end
