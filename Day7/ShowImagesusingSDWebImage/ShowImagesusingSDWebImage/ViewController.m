//
//  ViewController.m
//  ShowImagesusingSDWebImage
//
//  Created by Esraa Hassan on 4/27/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import "ViewController.h"
#import "MyCollectionViewController.h"
@interface ViewController ()

@end

@implementation ViewController{
    NSMutableData *dataReceived;
    NSMutableArray *strImages;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    strImages = [NSMutableArray new];
    NSString *str =@"https://api.androidhive.info/json/movies.json";
    
    NSURL * url = [NSURL URLWithString:str];
    
    NSURLRequest * request = [NSURLRequest requestWithURL:url];
    NSURLConnection * connection = [[NSURLConnection alloc] initWithRequest:request delegate:self];
    [connection start];
   
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

- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error{
    printf("didFailWithError\n");
}


- (void)connectionDidFinishLoading:(NSURLConnection *)connection{
    // hena hkon mot2akeda eno 3ml load lel data kolha f a3redha
    // NSString *str = [[NSString alloc] initWithData:dataReceived encoding:NSUTF8StringEncoding];
    
    ///b3ml pars lel json w a2ra el data elly 3ayzaha
    //NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:dataReceived options:NSJSONReadingAllowFragments error:nil];
    //NSString * strImage = [dict objectForKey:@"image"];
    NSArray * array =[NSJSONSerialization JSONObjectWithData:dataReceived options:NSJSONReadingAllowFragments error:nil];
    for(int i=0 ; i< [array count] ; i++)
    {
        NSDictionary *dict = [array objectAtIndex:i];
        NSString * strImage = [dict objectForKey:@"image"];
        [strImages addObject:strImage];
        //NSLog(@"%@", strImage);
    }
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)showMovies:(UIButton *)sender {
    MyCollectionViewController * cVC = [self.storyboard instantiateViewControllerWithIdentifier:@"collView"];
    cVC.strImages = strImages;
    [self.navigationController pushViewController:cVC animated:YES];
}
@end
