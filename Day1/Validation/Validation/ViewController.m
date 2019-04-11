//
//  ViewController.m
//  Validation
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


- (IBAction)isText:(UIButton *)sender {
    NSString *str = _myText.text;
    NSCharacterSet * set = [[NSCharacterSet characterSetWithCharactersInString:@"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLKMNOPQRSTUVWXYZ"] invertedSet];
    
    if ([str rangeOfCharacterFromSet:set].location != NSNotFound) {
        NSLog(@"Original string was not Characters.");
    }
    else
    {
        NSLog(@"Original string was all Characters.");
     }
}

- (IBAction)isNumber:(UIButton *)sender {
    NSString *str = _myText.text;
    NSCharacterSet *numberSet = [NSCharacterSet decimalDigitCharacterSet];
    NSString * trimmedString = [str stringByTrimmingCharactersInSet:numberSet];
    if ((trimmedString.length == 0) && (str.length > 0)) {
        NSLog(@"Original string was all numbers.");
    }
    else{
        NSLog(@"Original string was not numbers.");
    }
}
@end
