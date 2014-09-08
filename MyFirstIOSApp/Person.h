//
//  Person.h
//  MyFirstIOSApp
//
//  Created by BacPH on 2014/09/05.
//  Copyright (c) 2014年 Phung.Hoang.Bac. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property (nonatomic, copy) NSString *firstName;
@property (nonatomic, copy) NSString *lastName;
@property (nonatomic, assign) CGFloat currentHeight;
- (void) walkAtKilometersPerHour:(CGFloat)paramSpeedKilometersPerHour;
- (void) runAt10KilometersPerHour;
+ (CGFloat) maximumHeightInCentimeters;
+ (CGFloat) minimumHeightInCentimeters;

@end
