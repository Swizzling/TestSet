//
//  Person.h
//  CopyTest
//
//  Created by Jack on 12/29/16.
//  Copyright © 2016 mushank. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject<NSCopying, NSMutableCopying>

@property (nonatomic, copy) NSString *name;
@property (nonatomic, assign) NSInteger age;

@end
