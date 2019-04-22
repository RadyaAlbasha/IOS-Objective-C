//
//  ViewController.m
//  LoginUsingUserDefault
//
//  Created by JETS Mobile Lab - 2 on 4/22/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *userNameTF;
@property (weak, nonatomic) IBOutlet UITextField *passwordTF;
- (IBAction)login:(UIButton *)sender;

@end

@implementation ViewController{
    NSUserDefaults * userDefaults;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _strUserName = @"radyaalbasha";
    _strPassword = @"123456";
    
    userDefaults = [NSUserDefaults standardUserDefaults];
    
    //save in userDefaults
    if( [[userDefaults objectForKey:@"UserName"] isEqualToString:@""])
    {
        [self saveUserName:_strUserName
               andPassword:_strPassword];
        printf("save done\n");
    }
    else{
        printf("no nead to save");
    }
   
}


- (IBAction)login:(UIButton *)sender {
    _strUserName = [userDefaults objectForKey:@"UserName"];
    
    _strPassword = [userDefaults objectForKey:@"Password"];
    
    
    if([[_userNameTF text] isEqualToString:_strUserName] && [[_passwordTF text] isEqualToString:_strPassword])
    {
        printf("login\n");
    }
    else{
      //  printf("Not Found!\n");
        printf("Can't Login\n");
    }
}
-(void)saveUserName : (NSString*) name andPassword : (NSString*) password{
    
        [userDefaults setObject:name
                     forKey:@"UserName"];
    
        [userDefaults setObject:password
                     forKey:@"Password"];
    
    
    //to save even if the app closed
    [userDefaults synchronize]; // like commit
}

@end

