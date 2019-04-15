//
//  ViewController.h
//  NavigationController
//
//  Created by JETS Mobile Lab - 2 on 4/13/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import <UIKit/UIKit.h>
@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
- (IBAction)sentToSecondView:(id)sender;

-(void) clearTxt;

@end

