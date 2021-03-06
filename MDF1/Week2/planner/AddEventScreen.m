//
//  AddEventScreen.m
//  planner
//
//  Created by Derek Bertubin on 11/7/12.
//  Copyright (c) 2012 Derek Bertubin. All rights reserved.
//

#import "AddEventScreen.h"
#import "DetailViewController.h"

#define SAVE_BUTTON     0
#define CLOSE_BUTTON    1
#define CANCEL_BUTTON   2


@interface AddEventScreen ()

@end

@implementation AddEventScreen

// synth delegate
@synthesize customAddEventDelegate;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom Initalization
        self.title = NSLocalizedString(@"Add Note", @"Add Note");
        self.tabBarItem.image = [UIImage imageNamed:@"Add"];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
//    // ah this was tricky tricky as it it is not in the xib...;)
//    datePicker.minimumDate = [NSDate date];
//    
//    // loads swipoe 
//    leftSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(onSwipe:)];
//    // add swipe direction
//    leftSwipe.direction = UISwipeGestureRecognizerDirectionLeft;
//    // add gesture regonizer  
//    [saveSwipe addGestureRecognizer:leftSwipe];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// Show and hide Keyboard Using NC
- (void)viewWillAppear:(BOOL)animated
{
        [super viewWillAppear:animated];
}


// onSwipe method connected to the Save Label
//-(IBAction)onSwipe:(UISwipeGestureRecognizer *)recognizer
//
//{   // set string var to be passed into eventStringConcat
//    eventName = textField.text;
//    
//    // empty text field validation with alert
//    if (eventName.length == 0)
//    {
//        alert = [[UIAlertView alloc] initWithTitle:@"Ooops!" message:@"Sorry this feature is coming in the next update! :)" delegate: nil cancelButtonTitle:@"Ok" otherButtonTitles: nil];
//        [alert show];
//    }
//    else
//    {
//        alert = [[UIAlertView alloc] initWithTitle:@"Ooops!" message:@"Sorry this feature is coming in the next update! :)" delegate: nil cancelButtonTitle:@"Ok" otherButtonTitles: nil];
//        [alert show];
//        
//        // grab values from date picker
//        dateValue = datePicker.date;
//        if (dateValue != nil) {
//            //format date 
//            formattedDate =[[NSDateFormatter alloc]init];
//            if (formattedDate != nil) {
//                [formattedDate setDateFormat:@"EE, MMM d, yyyy hh:mm a"];
//                dateString = [formattedDate stringFromDate:dateValue];
//            }
//        }
//        // concat name and date into string 
//        eventStringConcat = [NSString stringWithFormat:@"Event Name: %@ \nDate:  %@ \n \n" ,eventName,dateString];
//        
//        
//        if (customAddEventDelegate != nil)
//        {
//            // send eventStringConcat to customAddEventDelegate thru eventRelay
//            [customAddEventDelegate eventRelay:eventStringConcat];
//            
//            // dismiss modal view 
//            [self dismissViewControllerAnimated:YES completion:nil];
//        }
//    }
//}


-(IBAction)onClick:(UIButton*)sender

{
   
[textField resignFirstResponder];
            
    

}

@end
