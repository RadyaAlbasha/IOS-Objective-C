//
//  ViewController.m
//  ToolBar
//
//  Created by JETS Mobile Lab - 2 on 4/15/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController{
    UIAlertView *alert1;
    UIAlertView *alert2;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)alertClicked:(UIBarButtonItem *)sender {
    printf("Alert Clicked\n");
    alert1 = [[UIAlertView alloc] initWithTitle:@"Alert" message:@"Hello JETS" delegate:self cancelButtonTitle:nil otherButtonTitles:@"OK",@"Cancel", nil];
    alert1.alertViewStyle = UIAlertViewStyleLoginAndPasswordInput;
    [alert1 show];
}

- (IBAction)imageClicked:(UIBarButtonItem *)sender {
    printf("Camera Clicked\n");
   
    //ADD IMAGE IN  RUNTIME
    UIImage * img = [UIImage imageNamed:@"212328-200.png"];
    [_image setImage:img];
}

- (IBAction)trashClicked:(UIBarButtonItem *)sender {
     alert2 = [[UIAlertView alloc] initWithTitle:@"Alert"message:@"Hello MAD" delegate:self cancelButtonTitle:nil otherButtonTitles:@"OK",@"Cancel", nil];
     [alert2 show];
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    if(alertView == alert1){
        switch (buttonIndex) {
            case 0:{
                printf("OK\n");
                 NSString * userName= [alertView textFieldAtIndex:0].text;
                 NSString * password= [alertView textFieldAtIndex:1].text;
                 printf("name: %s , password: %s\n",[userName UTF8String],[password UTF8String]);
                break;
            }
            case 1:
                printf("Cancel\n");
                break;
                
            default:
                break;
        }}
    
    if(alertView == alert2){
        switch (buttonIndex) {
            case 0:{
                printf("OK2\n");
                break;
            }
            case 1:
                printf("Cancel2\n");
                break;
                
            default:
                break;
        }}
}
@end
