//
//  ViewControllerTwo.h
//  NavigationController
//
//  Created by JETS Mobile Lab - 2 on 4/13/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ClearTextProtocol.h"
#import "ViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface ViewControllerTwo : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property NSString * str;
@property ViewController *mainView;
@end

NS_ASSUME_NONNULL_END
