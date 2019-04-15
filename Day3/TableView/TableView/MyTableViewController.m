//
//  MyTableViewController.m
//  TableView
//
//  Created by JETS Mobile Lab - 2 on 4/15/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import "MyTableViewController.h"

@interface MyTableViewController ()

@end

@implementation MyTableViewController{
    NSMutableArray *males;
    NSMutableArray *females;}

- (void)viewDidLoad {
    [super viewDidLoad];
    males=[NSMutableArray new];
    females=[NSMutableArray new];
    [males addObject:@"ahmed"];
     [males addObject:@"mohammed"];
     [males addObject:@"amr"];
     [males addObject:@"yaser"];
    
    [females addObject:@"radya"];
    [females addObject:@"nouran"];
    [females addObject:@"esraa"];
    [females addObject:@"sahar"];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSInteger numberOfRows;
    switch (section) {
        case 0:
            numberOfRows = [males count];
            break;
        case 1:
            numberOfRows = [females count];
            break;
        default:
            numberOfRows = 0;
            break;
    }
    return numberOfRows;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    switch (indexPath.section) {
        case 0:
            cell.textLabel.text = [males objectAtIndex:indexPath.row];
            cell.detailTextLabel.text = @"detailed";
            cell.accessoryType = UITableViewCellAccessoryCheckmark;
            break;
        case 1:
            cell.textLabel.text = [females objectAtIndex:indexPath.row];
            cell.detailTextLabel.text = @"detailed";
             cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
            break;
        default:
            break;
    }
    //cell.textLabel.text = @"Hello";
    //cell.detailTextLabel.text = @"detailed";
    // Configure the cell...
    
    return cell;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    switch (section) {
        case 0:
            return @"Males";
            break;
        case 1:
            return @"Females";
            break;
        default:
            return @"";
            break;
    }
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 50;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    switch (indexPath.section) {
        case 0:
            printf("Males : %s\n",[[males objectAtIndex:indexPath.row] UTF8String]);
            
            break;
        case 1:
             printf("Females : %s\n",[[females objectAtIndex:indexPath.row] UTF8String]);
            break;
        default:
            break;
    }
}
/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/


// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        switch (indexPath.section) {
            case 0:
                [males removeObjectAtIndex:indexPath.row];
                break;
            case 1:
                [females removeObjectAtIndex:indexPath.row];
                break;
            default:
                break;
        }
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        
        /* [tableView insertRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];*/
    }   
}


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
