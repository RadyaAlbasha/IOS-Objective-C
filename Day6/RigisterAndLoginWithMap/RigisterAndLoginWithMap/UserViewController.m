//
//  UserViewController.m
//  RigisterAndLoginWithMap
//
//  Created by Esraa Hassan on 4/26/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import "UserViewController.h"

@interface UserViewController ()

@end

@implementation UserViewController{
    NSUserDefaults * userDefaults;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    userDefaults = [NSUserDefaults standardUserDefaults];
    
    _labelName.text = [userDefaults objectForKey:@"UserName"];
    
    _LabelPhone.text=[userDefaults objectForKey:@"Phone"];
    
    _LabelEmail.text=[userDefaults objectForKey:@"Email"];
    
    _LabelAge.text = [userDefaults objectForKey:@"Age"];
    
    _labelLatitude.text = [userDefaults objectForKey:@"Latitude"];
    
    _labelLongitude.text = [userDefaults objectForKey:@"Longitude"];
    
    _myImageView.image = [UIImage imageNamed:[userDefaults objectForKey:@"Image"]];
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

@end
