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

// custom delegate relays info from AddEvent
-(void)eventRelay:(NSString *)eventString
{
    if (eventData != nil) {
        eventData = [eventData stringByAppendingString:eventString];
    }
    else
    {
        eventData = [NSString stringWithFormat:@"%@",eventString];
    }
    eventList.text = eventData;
}


- (void)viewDidLoad
{   // cache of original frame position **** not using until I figure out sideView.
    originalTopViewFrame = topView.frame;
    
    [super viewDidLoad];
    
    // checks to see if NSUserDefaults is empty
    if(![[NSUserDefaults standardUserDefaults]objectForKey:@"eventText"])
    {   // if so use initial string
        eventList.text = @"Events are listed Here!";
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
        eventList.text = eventTextWithOldData;
    }
    
    
    // loads swipes
    rightSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(onSwipe:)];
    // sets swipe direction 
    rightSwipe.direction = UISwipeGestureRecognizerDirectionRight;
    
    [addSwipe addGestureRecognizer:rightSwipe];
    
    
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)onSwipe:(UISwipeGestureRecognizer* )recognizer

{
    AddEventScreen * addEvent = [[AddEventScreen alloc] initWithNibName:@"AddEventScreen" bundle:nil];
    
    if (addEvent != nil)
    {
        addEvent.customAddEventDelegate = self;
        
        [self presentViewController:addEvent animated:YES completion: NULL];
    }
}


//********* onClick function for Save Button

-(IBAction)onClick:(UIButton *)sender
{
    if(eventList.text.length <= 23)
        
    {
        alert = [[UIAlertView alloc] initWithTitle:@"Whoa Buddy!" message:@"There is nothing to save! You must add a new event then save." delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles: nil];
        [alert show];
        
    }
    else
    {
        setDefaults = [NSUserDefaults standardUserDefaults];
        if (setDefaults != nil) {
            
            eventData = eventList.text;
            
            [setDefaults setObject:eventData forKey:@"eventText"];
            
            
            [setDefaults synchronize];
            
            alert =[[UIAlertView alloc]initWithTitle:@"Congratulations!" message:@"All of your events have been saved!" delegate:nil cancelButtonTitle:@"Whoo Hoo!" otherButtonTitles: nil];
            [alert show];
            
        }
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

