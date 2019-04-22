//
//  ViewController.h
//  LoginUsingUserDefault
//
//  Created by JETS Mobile Lab - 2 on 4/22/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property NSString* strUserName;
@property NSString* strPassword;

-(void)saveUserName : (NSString*) name andPassword : (NSString*) password;
@end

