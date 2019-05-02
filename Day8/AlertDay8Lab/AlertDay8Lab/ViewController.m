//
//  ViewController.m
//  AlertDay8Lab
//
//  Created by JETS Mobile Lab - 2 on 5/2/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (IBAction)showAlert:(UIButton *)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)showAlert:(UIButton *)sender {
    //lw 3ayzah yb2a shabah el alert view
    //preferredStyle:UIAlertControllerStyleAlert
    UIAlertController *alertControler = [UIAlertController  alertControllerWithTitle:@"Hello" message:@"This is an alert" preferredStyle: UIAlertControllerStyleActionSheet ];
   UIAlertAction * ok = [UIAlertAction actionWithTitle:@"ok" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        printf("ok\n");
    }];
                                         
   UIAlertAction * cancel = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        printf("cancel\n");
    }];
    
 [alertControler addAction:ok];
 [alertControler addAction:cancel];
                                         
    [self presentViewController:alertControler animated:YES completion:nil];
    
}
- (IBAction)takePhoto:(UIButton *)sender {
    if([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]){
        UIImagePickerController *picker = [UIImagePickerController new];
        picker.allowsEditing = YES;
        picker.delegate = self;
        picker.sourceType = UIImagePickerControllerSourceTypeCamera;
        [self presentViewController:picker animated:YES completion:nil];
    }
    else{
        UIAlertController *alertControler = [UIAlertController  alertControllerWithTitle:@"Error" message:@"Camera not found!" preferredStyle: UIAlertControllerStyleActionSheet ];
        UIAlertAction * ok = [UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            printf("ok\n");
        }];
        
        [alertControler addAction:ok];
        [self presentViewController:alertControler animated:YES completion:nil];
    }
  
}

- (IBAction)choosePhoto:(UIButton *)sender {
    UIImagePickerController *picker = [UIImagePickerController new];
    picker.allowsEditing = YES;
    picker.delegate = self;
    picker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    [self presentViewController:picker animated:YES completion:nil];
}
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString * ,id> *)info{
    _myImageView.image = info[UIImagePickerControllerEditedImage];//maska el key bta3 a5er sora
    
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
