//
//  ViewController.m
//  NavigationController
//
//  Created by JETS Mobile Lab - 2 on 4/13/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import "ViewController.h"
#import "ViewControllerTwo.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)sentToSecondView:(id)sender {
    ViewControllerTwo * VCTwo = [self.storyboard instantiateViewControllerWithIdentifier:@"secondView"];
    NSMutableString * str =[NSMutableString stringWithString:@"Hello "];
    
    [str appendString: _nameTextField.text];
    VCTwo.str = str;
    VCTwo.mainView = self;
    [self.navigationController pushViewController:VCTwo animated:NO];
}

-(void) clearTxt{
    _nameTextField.text = @"";
}
@end
