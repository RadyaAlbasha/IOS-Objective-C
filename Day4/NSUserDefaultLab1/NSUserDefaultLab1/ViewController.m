//
//  ViewController.m
//  NSUserDefaultLab1
//
//  Created by JETS Mobile Lab - 2 on 4/22/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *myTextField;
@property (weak, nonatomic) IBOutlet UILabel *myLable;
- (IBAction)saveDefaults:(UIButton *)sender;
- (IBAction)getDefaults:(UIButton *)sender;

@end

@implementation ViewController{
    NSUserDefaults * userDefaults;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    userDefaults = [NSUserDefaults standardUserDefaults];
    
}


- (IBAction)saveDefaults:(UIButton *)sender {
    NSString * str = [_myTextField text];
    [userDefaults setObject:str
                     forKey:@"name"];
    _myTextField.text = @"";
}

- (IBAction)getDefaults:(UIButton *)sender {
    NSString *str = [userDefaults objectForKey:@"name"];
    [_myLable setText:str];
    //to save even if the app closed
    [userDefaults synchronize]; // like commit
}
@end
