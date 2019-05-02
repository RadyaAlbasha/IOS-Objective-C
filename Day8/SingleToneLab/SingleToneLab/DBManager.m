//
//  DBManager.m
//  SingleToneLab
//
//  Created by JETS Mobile Lab - 2 on 5/2/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import "DBManager.h"

@implementation DBManager
+(DBManager *) sharedInstance{
    
    static DBManager* dbMgr;
    static dispatch_once_t predicate;
    /*another solution
    void (^myBlock) (void) = ^{
        dbMgr = [[DBManager alloc] init];
        printf("sharedInstance\n");}
      dispatch_once(&predicate , myBlock);
     */
    dispatch_once(&predicate , ^{
        dbMgr = [[DBManager alloc] init];
        printf("sharedInstance\n");
    });
    return dbMgr;
}
@end
