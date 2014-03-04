//
//  BCTableViewController.m
//  UITableViewController Challenge Solution
//
//  Created by Bill Consoli on 3/4/14.
//  Copyright (c) 2014 Bill Consoli. All rights reserved.
//
//
//IMPORTANT!!!
//IMPORTANT!!!
//
//IF YOU DELETE THE VIEW CONTROLLER AND ADD YOUR OWN CUSTOM TABLE VIEW CONTROLLER TO THE STORYBOARD
//NOT ONLY DO YOU HAVE TO CREATE A SUBCLASS OF UITABLEVIEWCONTROLLER AND BIND THE CUSTOM ONE TO IT
//BY SELECTING IT ON THE STORYBOARD AND THEN CHANGING THE CUSTOM CLASS ON THE IDENTITY INSPECTOR
//(third little icon at the top of the right-hand pane),
//BUT YOU ALSO HAVE TO SELECT THE TABLE VIEW CELL (expand the triangles by TABLE VIEW CONTROLLER and TABLE VIEW)
//AND GO TO THE ATTRIBUTES INSPECTOR (4th little icon at the top of the right-hand pane)
//AND MAKE IDENTIFIER = Cell
//THIS MATCHES UP WITH THE FIRST LINE OF THE METHOD TableView:CellForRowAtIndexPath BELOW
//THE PROGRAM WILL NOT RUN OTHERWISE

// using terminal to commit changes and to use a remote git repository
//
// cd to the project folder
// [the next two lines initialize the git thing]
// git add .
// git commit -m "first commit"
//
// [you need to get on github and create a remote repository for this project]
// [once you've done that, issue the following commands]
// git remote add origin {paste in the path you get from github}
// git push -u origin master
// enter github username/password if/when prompted
//
// to commit new changes later
// git add . {collect everything}
// git commit -m "added stuff" {or whatever message you want}
// 

#import "BCTableViewController.h"

@interface BCTableViewController ()

@end

@implementation BCTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 3;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    int retVal=0;
    
    // Return the number of rows in the section.
    if (section == 0)
        retVal = 2;
    else if (section == 1)
        retVal = 1;
    else if (section == 2)
        retVal = 3;
    
    return retVal;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    //SEE NOTE AT TOP OF THIS FILE FOR HOW IMPORTANT THE PREVIOUS LINE OF CODE IS
    //AND FOR WHAT OTHER STUFF YOU HAVE TO DO TO PREPARE FOR THE PREVIOUS LINE OF CODE
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    if (indexPath.section == 0)
    {
        cell.textLabel.text = [NSString stringWithFormat:@"I am in section 0"];
        cell.backgroundColor = [UIColor redColor];
    }
    else if (indexPath.section == 1)
    {
        cell.textLabel.text = [NSString stringWithFormat:@"another section"];
        cell.backgroundColor = [UIColor blueColor];
    }
    else if (indexPath.section == 2)
    {
        cell.textLabel.text = [NSString stringWithFormat:@"Cell %i",indexPath.row];
        cell.backgroundColor = [UIColor yellowColor];
    }
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a story board-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

 */

@end
