//
//  ViewController.m
//  SimpleCalculator
//
//  Created by JETS Mobile Lab - 2 on 4/11/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
   [self resetData];
}

-(void) resetData{
    self.num1 =0;
    self.num2=0;
    self.result=0;
    self.mylable.text =@"";
    self.isAdd = false;
    self.isSub = false;
    self.isDiv = false;
    self.isMul = false;
    self.isMod = false;
    self.labelStr = [NSMutableString stringWithString:@""];
}
-(void)showResult{
    NSNumber *myDoubleNumber ;
    myDoubleNumber = [NSNumber numberWithDouble:self.result];
    _mylable.text = [myDoubleNumber stringValue];
    _labelStr = _labelStr=[NSMutableString stringWithString:[myDoubleNumber stringValue]];
}
- (IBAction)AC:(UIButton *)sender {
    [self resetData];
}

- (IBAction)positiveOrNegative:(UIButton *)sender {
}

- (IBAction)mod:(UIButton *)sender {
    
}

- (IBAction)devide:(UIButton *)sender {
 
    if(![_labelStr isEqualToString:@""]){
        self.result =[_labelStr doubleValue];
        _labelStr=[NSMutableString stringWithString:@""];
        _mylable.text = @"/";
        _isDiv = true;
    }
}

- (IBAction)multiple:(UIButton *)sender {
  
    if(![_labelStr isEqualToString:@""]){
        self.result =[_labelStr doubleValue];
        _labelStr=[NSMutableString stringWithString:@""];
        _mylable.text = @"*";
        _isMul = true;
    }
}

- (IBAction)subtract:(UIButton *)sender {
    
    if(![_labelStr isEqualToString:@""]){
        self.result =[_labelStr doubleValue];
        _labelStr=[NSMutableString stringWithString:@""];
        _mylable.text = @"-";
        _isSub = true;
    }
}

- (IBAction)add:(UIButton *)sender {
    
    if(![_labelStr isEqualToString:@""]){
        self.result =[_labelStr doubleValue];
        _labelStr=[NSMutableString stringWithString:@""];
        _mylable.text = @"+";
        _isAdd = true;
        printf("add\n");
    }
}

- (IBAction)equal:(UIButton *)sender {
    
    if(_isAdd){
        printf("equal %lf\n",self.result);
        self.result = self.result + [_labelStr doubleValue];
        printf("equal %lf\n",self.result);
        [self showResult];
         _isAdd=false;
    }
    else if(_isSub){
        printf("equal %lf\n",self.result);
        self.result = self.result - [_labelStr doubleValue];
        printf("equal %lf\n",self.result);
        [self showResult];
        _isSub=false;
    }
    else if(_isMul){
        printf("equal %lf\n",self.result);
        self.result = self.result * [_labelStr doubleValue];
        printf("equal %lf\n",self.result);
        [self showResult];
        _isMul=false;
    }
    else if(_isDiv){
        printf("equal %lf\n",self.result);
        if([_labelStr doubleValue] != 0){
            self.result = self.result / [_labelStr doubleValue];
            printf("equal %lf\n",self.result);
            [self showResult];
        }
        else
        {
            self.mylable.text =@"ERROR";
            printf("Error\nDivide By Zero!!\n");
        }
        _isDiv=false;
    }
}

- (IBAction)dot:(UIButton *)sender {
    [_labelStr appendString:@"."];
    _mylable.text = _labelStr;
}

- (IBAction)zero:(UIButton *)sender {
    
    [_labelStr appendString:@"0"];
    _mylable.text = _labelStr;
}

- (IBAction)one:(UIButton *)sender {
    
    [_labelStr appendString:@"1"];
    _mylable.text = _labelStr;
     printf("1\n");
}

- (IBAction)two:(UIButton *)sender {
   
    [_labelStr appendString:@"2"];
    _mylable.text = _labelStr;
}

- (IBAction)three:(UIButton *)sender {
    
    [_labelStr appendString:@"3"];
    _mylable.text = _labelStr;
}

- (IBAction)four:(UIButton *)sender {
    
    [_labelStr appendString:@"4"];
    _mylable.text = _labelStr;
}

- (IBAction)five:(UIButton *)sender {
    
    [_labelStr appendString:@"5"];
    _mylable.text = _labelStr;
}

- (IBAction)six:(UIButton *)sender {
    
    [_labelStr appendString:@"6"];
    _mylable.text = _labelStr;
}

- (IBAction)seven:(UIButton *)sender {
   
    [_labelStr appendString:@"7"];
    _mylable.text = _labelStr;
}

- (IBAction)eight:(UIButton *)sender {
    
    [_labelStr appendString:@"8"];
    _mylable.text = _labelStr;
}

- (IBAction)nine:(UIButton *)sender {
    
    [_labelStr appendString:@"9"];
    _mylable.text = _labelStr;
}
@end
