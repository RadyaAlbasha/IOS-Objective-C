//
//  Colleagues.m
//  ColleaguesDetails
//
//  Created by JETS Mobile Lab - 2 on 4/15/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import "Colleagues.h"

@implementation Colleagues
-(id) initWithName:(NSString*) name andPhone : (NSString*) phone andAge : (NSString*) age andEmail : (NSString*) email andAddress : (NSString*) address{
    self = [super init];
    if(self != nil){
        self.name =name;
        self.address=address;
        self.age =age;
        self.email=email;
        self.phone=phone;
    }
    return self;
}
@end
