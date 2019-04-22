//
//  ViewController.m
//  Sync&AsyncUsingUIWebView
//
//  Created by JETS Mobile Lab - 2 on 4/22/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    NSMutableData *dataReceived;
}

- (IBAction)asyncAction:(UIButton *)sender;
- (IBAction)syncAction:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UIWebView *webView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)asyncAction:(UIButton *)sender {
    NSURL * url = [NSURL URLWithString:@"https://maktoob.yahoo.com/?p=us"];
    NSURLRequest * request = [NSURLRequest requestWithURL:url];
    NSURLConnection * connection = [[NSURLConnection alloc] initWithRequest:request delegate:self];
    [_webView loadRequest:request];
}

- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response{
    printf("didReceiveResponse\n");
    //3shan btetnada marra wa7da f ansab mkan a3arf hena
    dataReceived = [NSMutableData new];
}

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data{
    printf("didReceiveData\n");
    [dataReceived appendData:data];
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection{
    
}

- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error{
    printf("didFailWithError\n");
}

- (IBAction)syncAction:(UIButton *)sender {
    NSURL * url = [NSURL URLWithString:@"https://maktoob.yahoo.com/?p=us"];
    NSString *str = [[NSString alloc] initWithContentsOfURL:url encoding:NSUTF8StringEncoding error:nil];
    [_webView loadHTMLString:str baseURL:url];

}
@end
