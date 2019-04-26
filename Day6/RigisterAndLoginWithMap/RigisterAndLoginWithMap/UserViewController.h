//
//  UserViewController.h
//  RigisterAndLoginWithMap
//
//  Created by Esraa Hassan on 4/26/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UserViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *labelName;
@property (weak, nonatomic) IBOutlet UILabel *LabelPhone;
@property (weak, nonatomic) IBOutlet UILabel *LabelEmail;
@property (weak, nonatomic) IBOutlet UILabel *LabelAge;
@property (weak, nonatomic) IBOutlet UILabel *labelLatitude;
@property (weak, nonatomic) IBOutlet UILabel *labelLongitude;
@property (weak, nonatomic) IBOutlet UIImageView *myImageView;

@end
