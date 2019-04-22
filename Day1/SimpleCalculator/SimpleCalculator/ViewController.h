//
//  ViewController.h
//  SimpleCalculator
//
//  Created by JETS Mobile Lab - 2 on 4/11/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property double num1;
@property double num2;
@property double result;
@property NSMutableString* labelStr;
@property bool isAdd;
@property bool isSub;
@property bool isDiv;
@property bool isMul;
@property bool isMod;
@property (weak, nonatomic) IBOutlet UILabel *mylable;
- (IBAction)AC:(UIButton *)sender;
- (IBAction)positiveOrNegative:(UIButton *)sender;
- (IBAction)mod:(UIButton *)sender;
- (IBAction)devide:(UIButton *)sender;
- (IBAction)multiple:(UIButton *)sender;
- (IBAction)subtract:(UIButton *)sender;
- (IBAction)add:(UIButton *)sender;
- (IBAction)equal:(UIButton *)sender;
- (IBAction)dot:(UIButton *)sender;
- (IBAction)zero:(UIButton *)sender;
- (IBAction)one:(UIButton *)sender;
- (IBAction)two:(UIButton *)sender;
- (IBAction)three:(UIButton *)sender;
- (IBAction)four:(UIButton *)sender;
- (IBAction)five:(UIButton *)sender;
- (IBAction)six:(UIButton *)sender;
- (IBAction)seven:(UIButton *)sender;
- (IBAction)eight:(UIButton *)sender;
- (IBAction)nine:(UIButton *)sender;


@end

