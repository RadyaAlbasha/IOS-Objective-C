//
//  ViewController.m
//  NSUserDefaultLab1
//
//  Created by JETS Mobile Lab - 2 on 4/22/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import "ViewController.h"
#import "Book.h"
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
    Book *book =[[Book alloc] init];
    book.title = @"My Title";
    book.subTitle = @"My SubTitle";
    book.papers = 100;
   // bsta3mel el NSData 3shan yrda y3mel save ma ydenesh error
    NSData * data = [NSKeyedArchiver archivedDataWithRootObject:book];
    [userDefaults setObject:data forKey:@"key"];
   //NSString * str = [_myTextField text];
    //[userDefaults setObject:str forKey:@"name"];
  //  _myTextField.text = @"";
    //to save even if the app closed
    [userDefaults synchronize]; // like commit
}

- (IBAction)getDefaults:(UIButton *)sender {
    NSData * data = [userDefaults objectForKey:@"key"];
    Book *book = [NSKeyedUnarchiver unarchiveObjectWithData:data];
    printf("%d \n",book.papers);
   // NSString *str = [userDefaults objectForKey:@"name"];
    //[_myLable setText:str];
    
}
@end
