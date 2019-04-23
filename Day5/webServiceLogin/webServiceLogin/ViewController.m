//
//  ViewController.m
//  webServiceLogin
//
//  Created by JETS Mobile Lab - 2 on 4/22/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController (){
    NSMutableData *dataReceived;
}

@property (weak, nonatomic) IBOutlet UITextField *textFieldName;
@property (weak, nonatomic) IBOutlet UITextField *textFieldPhone;
- (IBAction)login:(UIButton *)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)login:(UIButton *)sender {
    
    NSString *str =@"http://jets.iti.gov.eg/FriendsApp/services/user/register?name=yourName&phone=yourPhone";
    str = [str stringByReplacingOccurrencesOfString:@"yourName" withString:_textFieldName.text];
    
    str = [str stringByReplacingOccurrencesOfString:@"yourPhone" withString:_textFieldPhone.text];
    
    NSURL * url = [NSURL URLWithString:str];
    
    NSURLRequest * request = [NSURLRequest requestWithURL:url];
    NSURLConnection * connection = [[NSURLConnection alloc] initWithRequest:request delegate:self];
}

- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response{
    printf("didReceiveResponse\n");
    //3shan btetnada marra wa7da f ansab mkan a3arf hena
    dataReceived = [NSMutableData new];
}

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data{
    printf("didReceiveData\n");
    //3shan el didReceiveData btetnada aktar men marra kol marra bygeb goz2 men el data
    [dataReceived appendData:data];
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection{
    // hena hkon mot2akeda eno 3ml load lel data kolha f a3redha
    // NSString *str = [[NSString alloc] initWithData:dataReceived encoding:NSUTF8StringEncoding];
    
    ///b3ml pars lel json w a2ra el data elly 3ayzaha
    NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:dataReceived options:NSJSONReadingAllowFragments error:nil];
    NSString * strStatus = [dict objectForKey:@"status"];
    NSString * strResult = [dict objectForKey:@"result"];
    
    //creat alert
    UIAlertController * alert = [UIAlertController
                                 alertControllerWithTitle:strStatus
                                 message:strResult
                                 preferredStyle:UIAlertControllerStyleAlert];
    
    if([strStatus isEqualToString:@"FAILING"])
    {
        
        //Add Buttons
        
        UIAlertAction* yesButton = [UIAlertAction
                                    actionWithTitle:@"Ok"
                                    style:UIAlertActionStyleDefault
                                    handler:^(UIAlertAction * action) {
                                        //Handle your yes please button action here
                                        
                                    }];
        
        UIAlertAction* noButton = [UIAlertAction
                                   actionWithTitle:@"Try Again"
                                   style:UIAlertActionStyleDefault
                                   handler:^(UIAlertAction * action) {
                                       //Handle no, thanks button
                                       self->_textFieldPhone.text= @"";
                                       self->_textFieldName.text = @"";
                                   }];
        
        //Add your buttons to alert controller
        
        [alert addAction:yesButton];
        [alert addAction:noButton];
        
        [self presentViewController:alert animated:YES completion:nil];
    }
    else{
        
        //Add Buttons
        
        UIAlertAction* yesButton = [UIAlertAction
                                    actionWithTitle:@"Ok"
                                    style:UIAlertActionStyleDefault
                                    handler:^(UIAlertAction * action) {
                                        //Handle your yes please button action here
                                        //Move to another view
                                        SecondViewController * VCTwo = [self.storyboard instantiateViewControllerWithIdentifier:@"secondView"];
                                        
                                        [self.navigationController pushViewController:VCTwo animated:YES];
                                    }];
        
        //Add your buttons to alert controller
        
        [alert addAction:yesButton];
        
        [self presentViewController:alert animated:YES completion:nil];
    }
    
    
}
- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error{
    printf("didFailWithError\n");
}
@end
