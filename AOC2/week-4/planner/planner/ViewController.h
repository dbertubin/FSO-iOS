//
//  ViewController.h
//  planner
//
//  Created by Derek Bertubin on 11/4/12.
//  Copyright (c) 2012 Derek Bertubin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddEventScreen.h"
#import "SideViewController.h"

@interface ViewController : UIViewController <AddEventDelegate>

{
    
    //IBOutlets
    IBOutlet UITextView * eventList;
    IBOutlet UILabel * addSwipe;
    IBOutlet UIButton * saveButton;
    IBOutlet UIButton * infoButton;
   
    
    // vars 
    NSString *eventData;
    UISwipeGestureRecognizer * rightSwipe;
    UIAlertView * alert;
    NSUserDefaults * setDefaults;
    NSString * eventText;
    NSString *eventTextWithOldData;
    
    CGRect originalTopViewFrame;
    
    //**** SideViewPresent - working on 
    BOOL isTopView;
    IBOutlet UIView * topView;
    IBOutlet UIView * bottomView;
}

-(IBAction)onSwipe:(UISwipeGestureRecognizer*)recognizer;
-(IBAction)onClick:(UIButton* )sender;
//-(IBAction)sideViewPresent:(UIButton* )sender;

@end
