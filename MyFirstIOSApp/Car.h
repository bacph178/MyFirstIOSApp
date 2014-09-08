//
//  Car.h
//  MyFirstIOSApp
//
//  Created by BacPH on 2014/09/08.
//  Copyright (c) 2014年 Phung.Hoang.Bac. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Car <NSObject>

@property (nonatomic, copy) NSArray *wheels;
@property (nonatomic, strong) UIColor *bodyColor;
@property (nonatomic, copy) NSArray *doors;

@end
