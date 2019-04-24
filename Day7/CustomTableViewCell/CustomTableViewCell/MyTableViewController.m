//
//  MyTableViewController.m
//  CustomTableViewCell
//
//  Created by JETS Mobile Lab - 2 on 4/24/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import "MyTableViewController.h"
#import "MyTableViewCell.h"
@interface MyTableViewController ()

@end

@implementation MyTableViewController{
    NSArray *fristLabelArray;
      NSArray *secondLabelArray;
      NSArray *imagesArray;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    fristLabelArray = @[@"Label one", @"Label two" , @"Label three"];
    secondLabelArray = @[@"Label one", @"Label two" , @"Label three"];
    imagesArray = @[@"female.png", @"female.png" , @"female.png"];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return [fristLabelArray count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    //de tre2et el class
    MyTableViewCell *cell=(MyTableViewCell *)[tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    cell.firstLabel.text = [fristLabelArray objectAtIndex:indexPath.row];
    cell.secondLabel.text = [secondLabelArray objectAtIndex:indexPath.row];
       cell.myImageView.image= [UIImage imageNamed:[imagesArray objectAtIndex:indexPath.row]];
   
     //de tre2et el tags
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
//    UILabel * labelOne = [cell viewWithTag:1];
//    UILabel * labelTwo=[cell viewWithTag:3];
//    UIImageView * img=[cell viewWithTag:2];
//
//    labelOne.text = [fristLabelArray objectAtIndex:indexPath.row];
//    labelOne.text = [secondLabelArray objectAtIndex:indexPath.row];
//    img.image = [UIImage imageNamed:[imagesArray objectAtIndex:indexPath.row]];
    
    
    // Configure the cell...
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 100;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
