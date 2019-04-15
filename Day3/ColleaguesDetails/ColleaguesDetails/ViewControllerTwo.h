//
//  ViewControllerTwo.h
//  ColleaguesDetails
//
//  Created by JETS Mobile Lab - 2 on 4/15/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import "ViewController.h"
#import "Colleagues.h"
NS_ASSUME_NONNULL_BEGIN

@interface ViewControllerTwo : ViewController

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *phoneLabel;
@property (weak, nonatomic) IBOutlet UILabel *ageLabel;
@property (weak, nonatomic) IBOutlet UILabel *emailLabel;
@property (weak, nonatomic) IBOutlet UILabel *addressLabel;
@property Colleagues * myColleagues;
@end

NS_ASSUME_NONNULL_END
