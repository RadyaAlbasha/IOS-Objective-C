//
//  SecondViewController.m
//  GestureLab3
//
//  Created by JETS Mobile Lab - 2 on 4/22/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()
- (IBAction)dismiss:(UIButton *)sender;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    printf("viewDidLoad\n");
    UISwipeGestureRecognizer *rec = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(dismissView)];
    
    rec.direction = UISwipeGestureRecognizerDirectionRight;
    //[self.subView addGestureRecognizer:rec];
    [self.view addGestureRecognizer:rec];
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    printf("viewWillAppear\n");
}
-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    printf("viewDidAppear\n");
    //completion called after finsh here!
}

- (IBAction)dismiss:(UIButton *)sender {
    [self dismissView];
}

-(void) dismissView{
    [self dismissViewControllerAnimated:YES completion:nil];
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
