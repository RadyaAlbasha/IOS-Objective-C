//
//  MyTableViewController.m
//  ColleaguesDetails
//
//  Created by JETS Mobile Lab - 2 on 4/15/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import "MyTableViewController.h"
#import "Colleagues.h"
#import "ViewControllerTwo.h"
@interface MyTableViewController ()

@end

@implementation MyTableViewController{

    NSMutableArray *males;
    NSMutableArray *females;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    males=[NSMutableArray new];
    females=[NSMutableArray new];
    [males addObject:[[Colleagues alloc] initWithName:@"Eslam" andPhone:@"123456789" andAge:@"15" andEmail:@"Eslam@gmail.com" andAddress:@"Cairo"]];
    [males addObject:[[Colleagues alloc] initWithName:@"Mohammed" andPhone:@"102154245" andAge:@"20" andEmail:@"Mohammed@gmail.com" andAddress:@"Cairo"]];
    [males addObject:[[Colleagues alloc] initWithName:@"Amr" andPhone:@"124545524" andAge:@"25" andEmail:@"Amr@gmail.com" andAddress:@"Alex"]];
    
    [females addObject:[[Colleagues alloc] initWithName:@"Radya" andPhone:@"01062633382" andAge:@"22" andEmail:@"radya@gmail.com" andAddress:@"Cairo"]];
    [females addObject:[[Colleagues alloc] initWithName:@"Esraa" andPhone:@"0104521255" andAge:@"25" andEmail:@"esraa@gmail.com" andAddress:@"Giza"]];
     [females addObject:[[Colleagues alloc] initWithName:@"Nouran" andPhone:@"01062644491" andAge:@"21" andEmail:@"nouran@gmail.com" andAddress:@"Cairo"]];
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
        {
            Colleagues *male =[males objectAtIndex:indexPath.row];
            cell.textLabel.text = male.name;
            cell.accessoryType = UITableViewCellAccessoryCheckmark;
            break;
            
        }
        case 1:
        {
            Colleagues *female=[females objectAtIndex:indexPath.row];
            cell.textLabel.text = female.name;
            cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
            break;
        }
            
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
    
     ViewControllerTwo * VCTwo = [self.storyboard instantiateViewControllerWithIdentifier:@"secondView"];
    
    switch (indexPath.section) {
        case 0:
        {
             Colleagues *male =[males objectAtIndex:indexPath.row];
            printf("Males : %s\n",[male.name UTF8String]);
           
            VCTwo.myColleagues = male;
            [self.navigationController pushViewController:VCTwo animated:NO];
            
            break;
        }
        case 1:
        {
            Colleagues *female =[females objectAtIndex:indexPath.row];
            printf("Females : %s\n",[female.name UTF8String]);
            VCTwo.myColleagues = female;
            [self.navigationController pushViewController:VCTwo animated:NO];
            break;
        }
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
