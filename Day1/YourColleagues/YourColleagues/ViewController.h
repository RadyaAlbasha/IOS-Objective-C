//
//  ViewController.h
//  YourColleagues
//
//  Created by JETS Mobile Lab - 2 on 4/11/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property NSMutableArray *myColleagues;
@property int indexName;
@property (weak, nonatomic) IBOutlet UILabel *myLableName;
@property (strong, nonatomic) IBOutlet UIView *prevBtn;

@property (strong, nonatomic) IBOutlet UIView *nextBtn;
- (IBAction)nextName:(UIButton *)sender;
- (IBAction)previousName:(UIButton *)sender;


@end

