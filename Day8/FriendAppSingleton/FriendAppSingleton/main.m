//
//  main.m
//  FriendAppSingleton
//
//  Created by JETS Mobile Lab - 2 on 5/2/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Friend.h"
int main(int argc, const char * argv[]) {
    Friend * friend = [Friend sharedInstance];
    printf("Instances Counter = %d\n",[Friend getInstancesCounter]);
    Friend * friend2 = [Friend sharedInstance];
    printf("Instances Counter = %d\n",[Friend getInstancesCounter]);
    Friend * friend3 = [Friend sharedInstance];
    printf("Instances Counter = %d\n",[Friend getInstancesCounter]);
    return 0;
}
