//
//  ViewController.h
//  planner
//
//  Created by Derek Bertubin on 11/4/12.
//  Copyright (c) 2012 Derek Bertubin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddEventScreen.h"

@interface ViewController : UIViewController <AddEventDelegate>

{
    
    //IBOutlets
    IBOutlet UITextView * eventList;
    IBOutlet UILabel * addSwipe;
    IBOutlet UIButton * saveButton;
 
    NSString *eventData;
    UISwipeGestureRecognizer * rightSwipe;
    UIAlertView * alert;
    NSUserDefaults * setDefaults;
    NSString * eventText; 

}

-(IBAction)onSwipe:(UISwipeGestureRecognizer*)recognizer;
-(IBAction)onClick:(UIButton* )sender;


@end
