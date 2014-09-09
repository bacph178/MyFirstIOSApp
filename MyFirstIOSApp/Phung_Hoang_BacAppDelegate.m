//
//  Phung_Hoang_BacAppDelegate.m
//  MyFirstIOSApp
//
//  Created by BacPH on 2014/09/05.
//  Copyright (c) 2014年 Phung.Hoang.Bac. All rights reserved.
//

#import "Phung_Hoang_BacAppDelegate.h"
#import "Person.h"

@implementation Phung_Hoang_BacAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    Person *person = [Person new];
    person[kFirstNameKey] = @"Bac";
    person[kLastNameKey] = @"Phung";
    NSString *firstNameByKey = person[kFirstNameKey];
    NSString *lastNameByKey = person[kLastNameKey];
    
    NSString *firstNameByIndex = person[0];
    NSString *lastNameByIndex = person[1];
    
    if ([firstNameByKey isEqualToString:firstNameByIndex] &&
        [lastNameByKey isEqualToString:lastNameByIndex]) {
        NSLog(@"Success");
    } else {
        NSLog(@"something is not right");
    }
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{}

- (void)applicationDidEnterBackground:(UIApplication *)application
{}

- (void)applicationWillEnterForeground:(UIApplication *)application
{}

- (void)applicationDidBecomeActive:(UIApplication *)application
{}

- (void)applicationWillTerminate:(UIApplication *)application
{}

@end
