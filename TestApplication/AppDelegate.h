//
//  AppDelegate.h
//  TestApplication
//
//  Created by Administrator on 14/06/17.
//  Copyright © 2017 Administrator. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;

@end

