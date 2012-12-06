//
//  FirstViewController.m
//  maps
//
//  Created by Derek Bertubin on 12/2/12.
//  Copyright (c) 2012 Derek Bertubin. All rights reserved.
//

#import "FirstViewController.h"
#import "DetailViewController.h"
#import "CustomCell.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

@synthesize bizTableView;
@synthesize editButton;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Places", @"Places");
        self.tabBarItem.image = [UIImage imageNamed:@"list view"];
    }
    return self;
    
    
}



#pragma mark -ViewDidLoad
- (void)viewDidLoad
{
    
    [super viewDidLoad];
    
    isInEditMode = NO;
    
    DataDelegate = (AppDelegate*)[[UIApplication sharedApplication] delegate];
    
    placeDetails = DataDelegate.annoList;
    NSLog(@"%d", placeDetails.count);
    
    self.navigationItem.rightBarButtonItem = self.editButton;
    editButton.title = @"Edit";
    
    
    
    
#pragma mark -MapInfoData Initialized
    
    
    // Do any additional setup after loading the view, typically from a nib.
    self.navigationController.navigationBar.tintColor = [UIColor colorWithRed:1 green:0.749 blue:0.000 alpha:1] /*#ffbf40*/;
	
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -UITableView Stuff

//**************** UITableView Stuff ****************************

// determines rows displays
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return DataDelegate.annoList.count;
    
}


#pragma mark -Custom UITableViewCell
//*****************Custom UITableViewCell************************
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;
{
    static NSString * CellIdentifier = @"Cell";
    
    CustomCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil)
        
        cell = [[CustomCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    {
        NSArray * views = [[NSBundle mainBundle] loadNibNamed:@"CustomCell" owner:nil options:nil];
        
        for (UIView* view in views) {
            if ([view isKindOfClass:[CustomCell class]])
            {
                cell = (CustomCell* )view;
                
                
                selectedAnnotation = [DataDelegate.annoList objectAtIndex:indexPath.row];
                cell.cellLabel.text = selectedAnnotation.title;
                cell.subCellLabel.text = selectedAnnotation.subtitle;
                
            }
        }
    }
    
    return cell;
}

-(UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return UITableViewCellEditingStyleDelete;
}


# pragma mark-TableView Edit
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete)
    {
        NSLog(@"we want to delelete %d", indexPath.row);
        
        [DataDelegate.annoList removeObjectAtIndex:indexPath.row];
        [bizTableView deleteRowsAtIndexPaths:[NSMutableArray arrayWithObject:indexPath] withRowAnimation:TRUE];
        
    }
}



#pragma mark -Cell Selection
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    selectedAnnotation = [DataDelegate.annoList objectAtIndex:indexPath.row];
    
    showLocation = [[DetailViewController alloc] initWithNibName:(@"DetailViewController") bundle:nil];
    
    if (showLocation != nil) {
        
        showLocation.placeString = selectedAnnotation.title;
        showLocation.locationString = selectedAnnotation.subtitle;
        showLocation.latValue = selectedAnnotation.coordinate.latitude;
        showLocation.longValue = selectedAnnotation.coordinate.longitude;

        
        [self.navigationController pushViewController:showLocation animated:YES];
        
    }
    
    
}


//********* onClick function for Edit  Button

-(IBAction)onClick:(id)sender
{
    if (isInEditMode == NO)
    {
        [bizTableView setEditing:TRUE];
        //   [editButton setTitle:@"Done" forState:UIControlStateNormal];
        isInEditMode= YES;
        editButton.title = @"Done";
    }
    else
    {
        [bizTableView setEditing:FALSE];
        //    [editButton setTitle:@"Edit " forState:UIControlStateNormal
        
        isInEditMode = NO;
        editButton.title = @"Edit";
        
        
    }
    
    
    
}

@end
//First Tab view
//The first tab should have a UITableView with a list of ten or more locations for a fictional business.

//The TableView also should have an edit button allowing you to delete any of the locations in the list.

//When clicking on a business location in the list, transition to another view that has a map at the top of the page and the business location information at the bottom (lat, lon, business name)

//The map on this page should be centered on this business and a pin annotation should designate it's location. Please make sure your zoom level is appropriate.

//Clicking on the pin annotaton for this business will display the business name.

//You should be also able to return to the tableview by pressing the back button.
