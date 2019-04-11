//
//  ViewController.m
//  YourColleagues
//
//  Created by JETS Mobile Lab - 2 on 4/11/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController{
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _myColleagues = [NSMutableArray arrayWithObjects: @"Radya", @"Nouran", @"Esraa", @"Salma",@"Sahar",@"Menna", nil];
    _indexName = -1;
    _myLableName.text = _myColleagues[0];
}

- (IBAction)nextName:(UIButton *)sender {
    if(_indexName== _myColleagues.count-1){
        _indexName = 0;
    }
    else{
        _indexName++;
    }
    _myLableName.text = _myColleagues[_indexName];
}

- (IBAction)previousName:(UIButton *)sender {
    if(_indexName== 0){
        int count = _myColleagues.count;
        _indexName = count -1;
    }
    else{
        _indexName--;
    }
    _myLableName.text = _myColleagues[_indexName];
}
@end
