//
//  ViewController.h
//  ToolBar
//
//  Created by JETS Mobile Lab - 2 on 4/15/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIAlertViewDelegate>
@property (weak, nonatomic) IBOutlet UIImageView *image;
- (IBAction)alertClicked:(UIBarButtonItem *)sender;
- (IBAction)imageClicked:(UIBarButtonItem *)sender;

- (IBAction)trashClicked:(UIBarButtonItem *)sender;

@end

