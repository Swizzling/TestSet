//
//  Jack.m
//  KVOTest
//
//  Created by Jack on 5/10/16.
//  Copyright © 2016 mushank. All rights reserved.
//

#import "Jack.h"

@implementation Jack

- (void)willChangeValueForKey:(NSString *)key
{
    NSLog(@"%@", NSStringFromSelector(_cmd));
    [super willChangeValueForKey:key];
}

- (void)didChangeValueForKey:(NSString *)key
{
    NSLog(@"%@", NSStringFromSelector(_cmd));
    [super didChangeValueForKey:key];
}

@end
