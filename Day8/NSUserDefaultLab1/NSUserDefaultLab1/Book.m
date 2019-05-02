//
//  Book.m
//  NSUserDefaultLab1
//
//  Created by JETS Mobile Lab - 2 on 5/2/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import "Book.h"

@implementation Book
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
//    self = [super initWithCoder:coder];
//    if (self) {
//        self
//    }
    self.title = [aDecoder decodeObjectForKey:@"title"];
    self.subTitle = [aDecoder decodeObjectForKey:@"subTitle"];
    self.papers = [aDecoder decodeIntForKey:@"papers"];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{
//    [super encodeWithCoder:coder];
//    <#statements#>
    [aCoder encodeObject:_title forKey:@"title"];
    [aCoder encodeObject:_subTitle forKey:@"subTitle"];
    [aCoder encodeInt:_papers forKey:@"papers"];
}
@end
