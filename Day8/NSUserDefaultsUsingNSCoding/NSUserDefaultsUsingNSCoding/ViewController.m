//
//  ViewController.m
//  NSUserDefaultsUsingNSCoding
//
//  Created by JETS Mobile Lab - 2 on 5/2/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import "ViewController.h"
#import "Friend.h"
@interface ViewController ()

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
    Friend *friend =[[Friend alloc] init];
    friend.name =_textFieldName.text;
    friend.phone = _textFieldPhone.text;
    friend.age = [_textFieldAge.text intValue];
    // bsta3mel el NSData 3shan yrda y3mel save ma ydenesh error
    NSData * data = [NSKeyedArchiver archivedDataWithRootObject:friend];
    [userDefaults setObject:data forKey:@"key"];
    [userDefaults synchronize]; // like commit
    _textFieldAge.text =@"";
    _textFieldPhone.text =@"";
    _textFieldName.text=@"";
}

- (IBAction)getDefaults:(UIButton *)sender {
    NSData * data = [userDefaults objectForKey:@"key"];
    Friend * friend = [NSKeyedUnarchiver unarchiveObjectWithData:data];
    _labelAge.text= [NSString stringWithFormat:@"%d",friend.age];
    _labelName.text= friend.name;
    _labelPhone.text = friend.phone;
    printf("%d \n",friend.age);
}
@end
