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
{
    
    [super viewDidLoad];
    
    if(![[NSUserDefaults standardUserDefaults]objectForKey:@"eventText"])
    {
        eventList.text = @"Events are listed Here!";
    }
    else
    {
        setDefaults = [NSUserDefaults standardUserDefaults];
        if (setDefaults != nil)
        {
            
            eventData = [setDefaults objectForKey:@"eventText"];
            eventTextWithOldData = [NSString stringWithFormat:@"%@", eventData];
            
            
        }
        eventList.text = eventTextWithOldData;
    }
    
    
    
    rightSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(onSwipe:)];
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
    NSLog(@"%@", eventList.text );
    NSLog(@"%d", eventList.text.length);
    if(eventList.text.length <= 23)
        
    {
        alert = [[UIAlertView alloc] initWithTitle:@"Whoa Buddy!" message:@"There is nothing to save! You must add a new event then save." delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles: nil];
        [alert show];
        
    }
    else
    {
        setDefaults = [NSUserDefaults standardUserDefaults];
        if (setDefaults != nil) {
            
            eventText = eventList.text;
            
            [setDefaults setObject:eventText forKey:@"eventText"];
            
            
            [setDefaults synchronize];
            
            alert =[[UIAlertView alloc]initWithTitle:@"Congratulations!" message:@"All of your events have been saved!" delegate:nil cancelButtonTitle:@"Whoo Hoo!" otherButtonTitles: nil];
            [alert show];
            
        }
    }
}


@end

