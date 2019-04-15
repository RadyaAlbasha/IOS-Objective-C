//
//  ViewControllerTwo.m
//  NavigationController
//
//  Created by JETS Mobile Lab - 2 on 4/13/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import "ViewControllerTwo.h"

@interface ViewControllerTwo ()

@end

@implementation ViewControllerTwo

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIBarButtonItem *myBarItem = [[UIBarButtonItem  alloc] initWithTitle:@"Done" style:UIBarButtonItemStyleDone target:self action:@selector(done)];
    [self.navigationItem setRightBarButtonItem:myBarItem];
    self.title = @"SecondView";
    _nameLabel.text = _str ;
}
-(void) done{
    printf("Done\n");
    [self.mainView clearTxt];
    [self.navigationController popViewControllerAnimated:YES];
}/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
