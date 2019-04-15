//
//  Colleagues.h
//  ColleaguesDetails
//
//  Created by JETS Mobile Lab - 2 on 4/15/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Colleagues : NSObject

@property NSString *name;
@property NSString *phone;
@property NSString *age;
@property NSString *email;
@property NSString *address;

-(id) initWithName:(NSString*) name andPhone : (NSString*) phone andAge : (NSString*) age andEmail : (NSString*) email andAddress : (NSString*) address;
@end

NS_ASSUME_NONNULL_END
