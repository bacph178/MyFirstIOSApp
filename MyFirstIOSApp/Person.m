//
//  Person.m
//  MyFirstIOSApp
//
//  Created by BacPH on 2014/09/05.
//  Copyright (c) 2014年 Phung.Hoang.Bac. All rights reserved.
//

#import "Person.h"
NSString *const kFirstNameKey = @"firstName";
NSString *const kLastNameKey = @"lastName";
@implementation Person
-(id) objectForKeyedSubcript:(id<NSCopying>)paramKey {
    NSObject<NSCopying> *keyAsObject = (NSObject<NSCopying> *)paramKey;
    if ([keyAsObject isKindOfClass:[NSString class]]) {
        NSString *keyAsString = (NSString *)keyAsObject;
        if ([keyAsString isEqualToString:kFirstNameKey] ||
            [keyAsString isEqualToString:kLastNameKey]) {
            return [self valueForKey:keyAsString];
        }
    }
    return nil;
}

- (void) setObject:(id)paramObject forKeyedSubscript:(id<NSCopying>)paramKey {
    NSObject<NSCopying> *keyAsObject = (NSObject<NSCopying> *)paramKey;
    if ([keyAsObject isKindOfClass:[NSString class]]) {
        NSString *keyAsString = (NSString *)keyAsObject;
        if ([keyAsString isEqualToString:kFirstNameKey]  ||
            [keyAsString isEqualToString:kLastNameKey]) {
            [self setValue:paramObject forKeyPath:keyAsString];
        }
    }
}
@end
