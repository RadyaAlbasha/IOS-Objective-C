//
//  ViewController.m
//  HelloApp
//
//  Created by JETS Mobile Lab - 2 on 4/11/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)sayHello:(UIButton *)sender {
    _myLable.text=@"Hello Radya <3";
}
@end
