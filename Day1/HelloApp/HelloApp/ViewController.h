//
//  ViewController.h
//  HelloApp
//
//  Created by JETS Mobile Lab - 2 on 4/11/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property IBOutlet UILabel *myLable;
@property (weak, nonatomic) IBOutlet UIButton *myBtn;
- (IBAction)sayHello:(UIButton *)sender;
@end

