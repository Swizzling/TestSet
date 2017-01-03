//
//  Person.m
//  CopyTest
//
//  Created by Jack on 12/29/16.
//  Copyright © 2016 mushank. All rights reserved.
//

#import "Person.h"

@implementation Person

- (id)copyWithZone:(NSZone *)zone{
    Person *person = [[Person allocWithZone:zone] init];
    person.name = self.name;
    person.age = self.age;
    return person;
}

- (id)mutableCopyWithZone:(NSZone *)zone{
    Person *person = [[Person allocWithZone:zone] init];
    person.name = self.name;
    person.age = self.age;
    return person;
}

@end
