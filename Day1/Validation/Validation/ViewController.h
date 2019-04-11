//
//  ViewController.h
//  Validation
//
//  Created by JETS Mobile Lab - 2 on 4/11/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *myText;
- (IBAction)isText:(UIButton *)sender;

- (IBAction)isNumber:(UIButton *)sender;

@end

