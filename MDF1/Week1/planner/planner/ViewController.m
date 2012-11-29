//
//  ViewController.m
//  planner
//
//  Created by Derek Bertubin on 11/4/12.
//  Copyright (c) 2012 Derek Bertubin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


//// custom delegate relays info from AddEvent
//-(void)eventRelay:(NSString *)eventString
//{
//    if (eventData != nil) {
//        eventData = [eventData stringByAppendingString:eventString];
//    }
//    else
//    {
//        eventData = [NSString stringWithFormat:@"%@",eventString];
//    }
//  //  eventList.text = eventData;
//}


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom Initalization
        self.title = NSLocalizedString(@"Thing Thingy", @"Thing Thingy");
        self.tabBarItem.image = [UIImage imageNamed:@"list view"];
    }
    return self;
}

- (void)viewDidLoad
{   // cache of original frame position **** not using until I figure out sideView.
    originalTopViewFrame = topView.frame;
    self.navigationController.navigationBar.tintColor = [UIColor colorWithRed:1 green:0.749 blue:0.000 alpha:1] /*#ffbf40*/;
    
    [super viewDidLoad];
    
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    self.navigationItem.rightBarButtonItem = self.editButtonItem;

    
    [editButton setTitle:@"Edit" forState:UIControlStateNormal];
    [editButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    isInEdit = FALSE;
    
    // checks to see if NSUserDefaults is empty
    if(![[NSUserDefaults standardUserDefaults]objectForKey:@"eventText"])
    {   // if so use initial string
  //      eventList.text = @"Events are listed Here!";
    }
    else
    {   // if not empy then use the stored info
        setDefaults = [NSUserDefaults standardUserDefaults];
        if (setDefaults != nil)
        {
            // retrive data using key and set it to string
            eventData = [setDefaults objectForKey:@"eventText"];
            eventTextWithOldData = [NSString stringWithFormat:@"%@", eventData];
            
            
        }
        // set eventData used in as the displayed data in Viewcontroller
    //    eventList.text = eventTextWithOldData;
    }
    
    
    // loads swipes
    rightSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(onSwipe:)];
    // sets swipe direction 
    rightSwipe.direction = UISwipeGestureRecognizerDirectionRight;
    
    //[addSwipe addGestureRecognizer:rightSwipe];
    
    stringArray = [[ NSMutableArray alloc] initWithObjects:
                   @"Thing 1",
                   @"Thing 2",
                   @"Thing 3",
                   @"Thing 4",
                   @"Thing 5",
                   @"Thing 6",
                   @"Thing 7",
                   @"Thing 8",
                   @"Thing 9",
                   @"Thing 10",
                   @"Thing 11",
                   @"Thing 12",
                   @"Thing 13",
                   @"Thing 14",
                   @"Thing 15",
                   @"Thing 16",
                   @"Thing 17",
                   @"Thing 18",
                   @"Thing 19",
                   @"Thing 20",
                   @"Thing 21",
                   @"Thing 22",
                   nil];
    
    stringArrayDetails = [[NSMutableArray alloc] initWithObjects:
                          @"Thing 1 is first!",
                          @"Thing 2 is second!",
                          @"Thing 3 is Third!",
                          @"Thing 4 is Fourth!",
                          @"Thing 5 is Fifth!",
                          @"Thing 6 is Sixth!",
                          @"Thing 7 is Seventh!",
                          @"Thing 8 is Eighth!",
                          @"Thing 9 is Ninth!",
                          @"Thing 10 is Tenth!",
                          @"Thing 11 is Eleventh!",
                          @"Thing 12 is Twelvth!",
                          @"Thing 13 is Thirteeth!",
                          @"Thing 14 is Fourteenth!",
                          @"Thing 15 is Fifteenth!",
                          @"Thing 16 is Sixtenth!",
                          @"Thing 17 is Seventeenth!",
                          @"Thing 18 is Eighteenth!",
                          @"Thing 19 is Nineteenth!",
                          @"Thing 20 is Twentieth!",
                          @"Thing 21 is Twenty First!",
                          @"Thing 22 is Twenty Second!",
                          nil];
    
    }

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//-(IBAction)onSwipe:(UISwipeGestureRecognizer* )recognizer
//
//{
//    AddEventScreen * addEvent = [[AddEventScreen alloc] initWithNibName:@"AddEventScreen" bundle:nil];
//    
//    if (addEvent != nil)
//    {
//        addEvent.customAddEventDelegate = self;
//        
//        [self presentViewController:addEvent animated:YES completion: NULL];
//    }
//}

//**************** UITableView Stuff ****************************

// determines rows displays
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return stringArray.count;
}

//*****************Custom UITableViewCell************************
- (CustomUITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;
{
    static NSString * CellIdentifier = @"Cell";
    
    CustomUITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil)
    {
//        cell = [[CustomUITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        
        NSArray * views = [[NSBundle mainBundle] loadNibNamed:@"CustomUITableViewCell" owner:nil options:nil];
        
        for (UIView* view in views) {
            if ([view isKindOfClass:[CustomUITableViewCell class]])
            {
                cell = (CustomUITableViewCell* )view;
                
                cell.textLabel.text = [stringArray objectAtIndex:indexPath.row];
                cell.subTextLabel.text = [stringArrayDetails objectAtIndex:indexPath.row];
                
            }
        }
    }
    
    return cell;
}

- (UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return UITableViewCellEditingStyleDelete;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete)
    {
        NSLog(@"we want to delelete %d", indexPath.row);
        
        [stringArray removeObjectAtIndex:indexPath.row];
        [stringArrayDetails removeObjectAtIndex:indexPath.row];
        
        [tableView deleteRowsAtIndexPaths:[NSMutableArray arrayWithObject:indexPath] withRowAnimation:TRUE];
        
    }
}


//******************** UITableViewCell Selection *****************

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    
//    if (customDetailDelegate != nil) {
//        [customDetailDelegate detailRelay:cellText];
//    }
    
    
    
    DetailViewController * showDetails = [[DetailViewController alloc] initWithNibName:(@"DetailViewController") bundle:nil];
    
    if (showDetails != nil) {
        
        showDetails.detailLabelText = [stringArray objectAtIndex:indexPath.row];
        showDetails.detailViewText = [stringArrayDetails objectAtIndex:indexPath.row];

        [self.navigationController pushViewController:showDetails animated:YES];
        NSLog(@"Cell text is %@", cellText);
        
    }
    
   
}


//********* onClick function for Edit  Button

-(IBAction)onClick:(UIButton *)sender
{
    if (isInEdit == NO)
    {
        [eventList setEditing:TRUE];
        [editButton setTitle:@"Done" forState:UIControlStateNormal];
        isInEdit= YES;
    }
    else 
    {
        [eventList setEditing:FALSE];
        [editButton setTitle:@"Edit " forState:UIControlStateNormal
         ];
        isInEdit = NO;
    }
    

}




/*
 -(IBAction)sideViewPresent:(UIButton* )sender
 {
 
 if (isTopView)
 {
 // announces the animation
 [UIView beginAnimations:nil context:nil];
 
 // sets the animation duration
 [UIView setAnimationDuration:0.5f];
 
 
 topView.frame = CGRectMake(220.0f, 0.0f, topView.frame.size.width, topView.frame.size.height);
 isTopView = NO;
 
 // commits animation
 [UIView commitAnimations];
 }
 else if (!isTopView)
 {
 // announces the animation
 [UIView beginAnimations:nil context:nil];
 
 // sets the animation duration
 [UIView setAnimationDuration:0.5f];
 
 // if the bottom view is the current move the top view over it
 topView.frame = originalTopViewFrame;
 isTopView = YES;
 
 // commits animation
 [UIView commitAnimations];
 }
 
 
 
 
 */

/*
 
 [UIView beginAnimations:nil context:nil];
 
 [UIView setAnimationDuration:3.0f];
 topView.frame = CGRectMake(250.0f, 0.0f, topView.frame.size.width, topView.frame.size.height);
 
 [UIView commitAnimations];
 */




@end

