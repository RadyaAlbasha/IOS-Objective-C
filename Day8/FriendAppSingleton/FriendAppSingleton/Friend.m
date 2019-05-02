//
//  Friend.m
//  FriendAppSingleton
//
//  Created by JETS Mobile Lab - 2 on 5/2/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import "Friend.h"

@implementation Friend
static int instancesCounter;
+(Friend *) sharedInstance{
    static Friend* friend;
    static dispatch_once_t predicate;
    /*another solution
     void (^myBlock) (void) = ^{
     dbMgr = [[DBManager alloc] init];
     printf("sharedInstance\n");}
     dispatch_once(&predicate , myBlock);
     */
    dispatch_once(&predicate , ^{
        friend = [[Friend alloc] init];
        printf("sharedInstance\n");
    });
    return friend;
}
+(int)getInstancesCounter{
    return instancesCounter;
}

-(id)init{
    self = [super init];
    if (self) {
        instancesCounter++;
    }
    return self;
}
@end
