//
//  ViewController.m
//  GestureLab3
//
//  Created by JETS Mobile Lab - 2 on 4/22/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *subView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UISwipeGestureRecognizer *rec = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(next)];
    
    rec.direction = UISwipeGestureRecognizerDirectionLeft;
    //[self.subView addGestureRecognizer:rec];
    [self.view addGestureRecognizer:rec];
    // Do any additional setup after loading the view, typically from a nib.
}


-(void) next{
    printf("Swiped\n");
    SecondViewController * secondVC = [self.storyboard instantiateViewControllerWithIdentifier:@"second"];
    [secondVC setModalTransitionStyle:UIModalTransitionStyleFlipHorizontal];
    [self presentViewController:secondVC
                       animated:YES completion:nil];
}
@end
