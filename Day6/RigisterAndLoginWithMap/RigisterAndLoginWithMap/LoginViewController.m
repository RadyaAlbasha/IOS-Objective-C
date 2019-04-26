//
//  LoginViewController.m
//  RigisterAndLoginWithMap
//
//  Created by Esraa Hassan on 4/26/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import "LoginViewController.h"
#import "UserViewController.h"
@interface LoginViewController ()

@end

@implementation LoginViewController{
    NSUserDefaults * userDefaults;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
     userDefaults = [NSUserDefaults standardUserDefaults];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)login:(UIButton *)sender {
    
    _strPhone= [userDefaults objectForKey:@"Phone"];
    
    
    if([[_textFieldPhone text] isEqualToString:_strPhone])
    {
        UserViewController * uVC = [self.storyboard instantiateViewControllerWithIdentifier:@"userView"];
        [self.navigationController pushViewController:uVC animated:YES];
        printf("login\n");
    }
    else{
        //  printf("Not Found!\n");
        printf("Can't Login\n");
    }
}
@end
