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
        self.title = NSLocalizedString(@"Mobile App Design", @"Thing Thingy");
        self.tabBarItem.image = [UIImage imageNamed:@"list view"];
    }
    return self;
}

- (void)viewDidLoad
{   // cache of original frame position **** not using until I figure out sideView.
    originalTopViewFrame = topView.frame;
    self.navigationController.navigationBar.tintColor = [UIColor colorWithRed:1 green:0.749 blue:0.000 alpha:1] /*#ffbf40*/;
    
    [super viewDidLoad];
    
//    
//    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
// //   self.navigationItem.rightBarButtonItem = self.editButtonItem;
//    editButton = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemEdit target:self.navigationItem.rightBarButtonItem action:@selector(onClick:)];
//    isInEdit = FALSE;
//    
//    // checks to see if NSUserDefaults is empty
//    if(![[NSUserDefaults standardUserDefaults]objectForKey:@"eventText"])
//    {   // if so use initial string
//  //      eventList.text = @"Events are listed Here!";
//    }
//    else
//    {   // if not empy then use the stored info
//        setDefaults = [NSUserDefaults standardUserDefaults];
//        if (setDefaults != nil)
//        {
//            // retrive data using key and set it to string
//            eventData = [setDefaults objectForKey:@"eventText"];
//            eventTextWithOldData = [NSString stringWithFormat:@"%@", eventData];
//            
//            
//        }
//        // set eventData used in as the displayed data in Viewcontroller
//    //    eventList.text = eventTextWithOldData;
//    }
 
    // feeds the cell.mainLabel
    stringArray = [[ NSMutableArray alloc] initWithObjects:
                   @"1. One Screen",
                   @"2. One Application at a Time",
                   @"3. Think Top Down",
                   @"4. Minimize Input",
                   @"5. Think Top Down",
                   @"6. Minimize Input",
                   nil];
    // feeds cell.subTextLabel
    stringArrayDetails = [[NSMutableArray alloc] initWithObjects:
                          @"One of the biggest differences between designing for the desktop and mobile platforms is the amount of windows that your application can have. On the desktop, an application can theoretically have as many windows that it needs. On a mobile device, however, you are able to show only one screen at a time. There are exceptions to this rule, such as the different alert and modal windows, but plan for your application to have only the one window. Your application can have multiple screens, but only one can be shown at a time. If your application requires the use of multiple windows, you will need to try and design it into a sequence of screens or rethink the user flow of your application.",
                          @"With any mobile device, memory is going to be limited, and the iPhone and iPod touch are no different. Developers will need to make sure that their applications use the least amount of memory as possible. To stop applications from using memory when they are no longer being used, Apple has limited the number of applications that you can run at the same time to one. This means that a third-party application will never run in the background after a user has exited it. So when a user answers the phone or switches to any other application, the application that he or she was using will quit. If a user is interrupted unexpectedly while using your application, he will expect that his data is not lost when he returns. To help combat this, it is important to save the state of your application when it makes sense. You may also want to save the last screen or state in which the user left the application. When the user returns to the application, you can load the necessary data and take him to the last part of the application that he was interacting with.",
                          @"When designing your application, you will need to take into consideration how you display information to the user. Because a user will be using her fingers or thumbs in order to interact with your application, portions of the screen will be blocked from view by her hand. This is an important user experience problem that designers and developers will need to solve as touch-enabled devices and screens become more ubiquitous. It is a good practice to place any important information higher up on the screen than you normally would. Any changes in your interface as the user interacts with it should always be above where she is touching the screen. This will make sure that the user’s hand does not block any important information.",
                          @"One of the big differences between the iPhone and other smartphones is the keyboard. Other smartphones have a tactile keyboard that is integrated into the hardware of the device. With the screen size of the iPhone, adding a real keyboard would not be practical. Instead, there is a touch-screen keyboard that appears when user input is required. Typing on this keyboard is suitable for typing short amounts of text in small bursts, but this is less than ideal when trying to type a long email. Having users enter lots of information with the keyboard can cause them to become frustrated and leave your application. Limiting the amount of information that users must input before having something meaningful occur is a good way to keep them happy. It is also a good idea to make users enter that information only once. Saving it to the device to a text file or SharedObject is an option for doing this. You can also create a settings bundle for your application so that users can update this information from the Settings application on the device. This way, if any of their information ever changes, they can update it without going into the application. ",
                          @"When designing your application, you will need to take into consideration how you display information to the user. Because a user will be using her fingers or thumbs in order to interact with your application, portions of the screen will be blocked from view by her hand. This is an important user experience problem that designers and developers will need to solve as touch-enabled devices and screens become more ubiquitous. It is a good practice to place any important information higher up on the screen than you normally would. Any changes in your interface as the user interacts with it should always be above where she is touching the screen. This will make sure that the user’s hand does not block any important information.",
                          @"One of the big differences between the iPhone and other smartphones is the keyboard. Other smartphones have a tactile keyboard that is integrated into the hardware of the device. With the screen size of the iPhone, adding a real keyboard would not be practical. Instead, there is a touch-screen keyboard that appears when user input is required. Typing on this keyboard is suitable for typing short amounts of text in small bursts, but this is less than ideal when trying to type a long email. Having users enter lots of information with the keyboard can cause them to become frustrated and leave your application. Limiting the amount of information that users must input before having something meaningful occur is a good way to keep them happy. It is also a good idea to make users enter that information only once. Saving it to the device to a text file or SharedObject is an option for doing this. You can also create a settings bundle for your application so that users can update this information from the Settings application on the device. This way, if any of their information ever changes, they can update it without going into the application.",
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


#pragma mark -UITableView Stuff

//**************** UITableView Stuff ****************************

// determines rows displays
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return stringArray.count;
}


#pragma mark -Custom UITableViewCell
//*****************Custom UITableViewCell************************
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;
{
    static NSString * CellIdentifier = @"Cell";
    
    CustomUITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil)
        
        cell = [[CustomUITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    {
        NSArray * views = [[NSBundle mainBundle] loadNibNamed:@"CustomUITableViewCell" owner:nil options:nil];
        
        for (UIView* view in views) {
            if ([view isKindOfClass:[CustomUITableViewCell class]])
            {
                cell = (CustomUITableViewCell* )view;

                
                cell.mainLabel.text = [stringArray objectAtIndex:indexPath.row];
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


# pragma mark-TableView Edit
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



#pragma mark -Cell Selection
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    
    
    DetailViewController * showDetails = [[DetailViewController alloc] initWithNibName:(@"DetailViewController") bundle:nil];
    
    if (showDetails != nil) {
        
        showDetails.detailLabelText = [stringArray objectAtIndex:indexPath.row];
        showDetails.detailViewText = [stringArrayDetails objectAtIndex:indexPath.row];

        [self.navigationController pushViewController:showDetails animated:YES];
        
    }
    
   
}


//********* onClick function for Edit  Button

-(void)onClick:(id)sender
{
    if (isInEdit == NO)
    {
        [eventList setEditing:TRUE];
     //   [editButton setTitle:@"Done" forState:UIControlStateNormal];
        isInEdit= YES;
    }
    else 
    {
        [eventList setEditing:FALSE];
    //    [editButton setTitle:@"Edit " forState:UIControlStateNormal
        
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

