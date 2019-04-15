//
//  ViewControllerTwo.m
//  ColleaguesDetails
//
//  Created by JETS Mobile Lab - 2 on 4/15/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import "ViewControllerTwo.h"

@interface ViewControllerTwo ()

@end

@implementation ViewControllerTwo

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"SecondView";
    _nameLabel.text = _myColleagues.name ;
    _ageLabel.text = _myColleagues.age;
    _phoneLabel.text = _myColleagues.phone;
    _emailLabel.text = _myColleagues.email;
    _addressLabel.text = _myColleagues.address;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
