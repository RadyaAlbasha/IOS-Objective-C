//
//  ViewController.m
//  webServiceLogin
//
//  Created by JETS Mobile Lab - 2 on 4/22/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import "ViewController.h"

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
    
    
    NSURL * url = [NSURL URLWithString:@"http://jets.iti.gov.eg/FriendsApp/services/user/register?name=yourName&phone=yourPhone"];
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
    NSString * str = [dict objectForKey:@"status"];
    
}
- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error{
    printf("didFailWithError\n");
}
@end
