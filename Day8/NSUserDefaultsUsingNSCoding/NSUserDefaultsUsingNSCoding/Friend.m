//
//  Friend.m
//  NSUserDefaultsUsingNSCoding
//
//  Created by JETS Mobile Lab - 2 on 5/2/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import "Friend.h"

@implementation Friend
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self.name = [aDecoder decodeObjectForKey:@"name"];
    self.phone = [aDecoder decodeObjectForKey:@"phone"];
    self.age = [aDecoder decodeIntForKey:@"age"];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{
    [aCoder encodeObject:_name forKey:@"name"];
    [aCoder encodeObject:_phone forKey:@"phone"];
    [aCoder encodeInt:_age forKey:@"age"];
}
@end
