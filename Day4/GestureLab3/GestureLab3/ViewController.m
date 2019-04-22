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

@implementation ViewController{
    int (^myBlock2) (int,int) ;
    void (^myBlock3) (void);
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UISwipeGestureRecognizer *rec = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(next)];
    
    rec.direction = UISwipeGestureRecognizerDirectionLeft;
    //[self.subView addGestureRecognizer:rec];
    [self.view addGestureRecognizer:rec];
    
    //block1 impl
    _myBlock1 = ^int (int a , int b){
        printf("Block1\n");
        return a * b;
    };
    printf("Resulte Block1: %d" , _myBlock1(2,5));
    //-----------Block2-------------
    myBlock2= ^(int a , int b){
        printf("Block2\n");
        return a * b;
    };
    printf("Resulte Block2: %d" , myBlock2(2,5));
    //----------Block3--------------
    myBlock3= ^(void){
        printf("Block3\n");
    };
    // Do any additional setup after loading the view, typically from a nib.
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

-(void) next{
    printf("Swiped\n");
    SecondViewController * secondVC = [self.storyboard instantiateViewControllerWithIdentifier:@"second"];
    [secondVC setModalTransitionStyle:UIModalTransitionStyleFlipHorizontal];
    //[self presentViewController:secondVC animated:YES completion:nil];
    
   //[self presentViewController:secondVC animated:YES completion:myBlock3];
   
    [self presentViewController:secondVC animated:YES completion:^(void){
                           printf("done!\n");
                       }];
}
@end
