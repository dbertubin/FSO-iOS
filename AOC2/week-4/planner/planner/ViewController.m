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
    eventList.text = @"Events are listed Here!";
    
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


@end

