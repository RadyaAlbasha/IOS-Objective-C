//
//  ViewController.m
//  CustomTableViewCell
//
//  Created by JETS Mobile Lab - 2 on 4/24/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController{
     NSArray *fristLabelArray;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
     fristLabelArray = @[@"Label one", @"Label two" , @"Label three"];
    _myTabelView.delegate=self;
    _myTabelView.dataSource=self;
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return [fristLabelArray count];
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    cell.textLabel.text = [fristLabelArray objectAtIndex:indexPath.row];
    return cell;
}

@end
