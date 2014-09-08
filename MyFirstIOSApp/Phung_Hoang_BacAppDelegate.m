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
    // Override point for customization after application launch.
//    Person *person = [[Person alloc] init];
//    person.firstName = @"Bac";
//    person.lastName = @"Phung Hoang";
//    person.currentHeight = 175.0f;
//    if(person.currentHeight >= [Person minimumHeightInCentimeters] &&
//       person.currentHeight <= [Person maximumHeightInCentimeters]) {
//    } else {}
//    [person walkAtKilometersPerHour:3.0f];
//    [person runAt10KilometersPerHour];
//    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
//    self.window.backgroundColor = [UIColor blueColor];
//    [self.window makeKeyAndVisible];
    NSString *string1 = @"String 1";
    NSString *string2 = @"String 2";
    NSString *String3 = @"String 3";
    NSArray *immutableArray = @[string1, string2, String3];
    NSMutableArray *mutableArray = [[NSMutableArray alloc]
                                    initWithArray:immutableArray];
    [mutableArray exchangeObjectAtIndex:0 withObjectAtIndex:1];
    [mutableArray removeObjectAtIndex:1];
    [mutableArray setObject:string1 atIndexedSubscript:0];
    NSLog(@"Immutable array = %@", immutableArray);
    NSLog(@"Mutable Array = %@", mutableArray);
    NSDictionary *personInformation = @{
                                        @"firstName": @"Mark",
                                        @"lastName": @"Tremonti",
                                        @"age" : @30,
                                        @"sex": @"Male"};
    NSString *firstName = personInformation[@"firstName"];
    NSString *lastName = personInformation[@"lastName"];
    NSNumber *age = personInformation[@"age"];
    NSString *sex = personInformation[@"sex"];
    
    NSLog(@"Full name = %@ %@", firstName, lastName);
    NSLog(@"Age = %@, Sex = %@", age, sex);
    
    NSDictionary *information = @{@"firstName" : @"Mark",
                                  @"lastName" : @"Tremoti",
                                  @"age" : @30,
                                  @"sex" : @"Male"};
    NSMutableDictionary *mutableInformation = [[NSMutableDictionary alloc]
                                               initWithDictionary:information];
    mutableInformation[@"age"] = @32;
    NSLog(@"Information = %@", mutableInformation);
    
    //Set
    NSSet *setOfNumbers1 = [NSSet setWithArray:@[@3, @4, @1, @5, @10]];
    
    //OrderedSet
    NSOrderedSet *setOfNumbers2 = [NSOrderedSet orderedSetWithArray:
                                   @[@3, @4, @1, @5, @10]];
    NSLog(@"Ordered set of numbers = %@", setOfNumbers2);
    
    //MutableOrderSet
    NSMutableOrderedSet *setOfNumbers3 = [NSMutableOrderedSet orderedSetWithArray:
                                          @[@3, @4, @1, @5, @10]];
    [setOfNumbers3 removeObject:@5];
    [setOfNumbers3 addObject:@0];
    [setOfNumbers3 exchangeObjectAtIndex:1 withObjectAtIndex:2];
    NSLog(@"set of numbers = %@", setOfNumbers3);
    
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
