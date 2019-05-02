//
//  Friend.h
//  NSUserDefaultsUsingNSCoding
//
//  Created by JETS Mobile Lab - 2 on 5/2/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Friend : NSObject <NSCoding>
@property NSString * name;
@property int age;
@property NSString * phone;
@end

NS_ASSUME_NONNULL_END
