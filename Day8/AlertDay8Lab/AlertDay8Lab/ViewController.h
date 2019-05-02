//
//  ViewController.h
//  AlertDay8Lab
//
//  Created by JETS Mobile Lab - 2 on 5/2/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIImagePickerControllerDelegate>
- (IBAction)takePhoto:(UIButton *)sender;
- (IBAction)choosePhoto:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UIImageView *myImageView;


@end

