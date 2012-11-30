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
#import "CustomUITableViewCell.h"
#import "DetailViewController.h"

@protocol DetailDelegate <NSObject>

-(void)detailRelay: (NSString*)celltext;

@end


@interface ViewController : UIViewController //<AddEventDelegate>

{

    //IBOutlets
    IBOutlet UITableView * eventList;
//    IBOutlet UILabel * addSwipe;
    UIBarButtonItem * editButton;
    IBOutlet UIButton * infoButton;
   
    // Array
    NSMutableArray * stringArray;
    NSMutableArray * stringArrayDetails;
    
    // vars 
    NSString *eventData;
    UISwipeGestureRecognizer * rightSwipe;
    UIAlertView * alert;
    NSUserDefaults * setDefaults;
    NSString * eventText;
    NSString *eventTextWithOldData;
    
    
    //DetailView Vars
    NSString * cellText;
    
    
    //Sideview vars
    CGRect originalTopViewFrame;
    
    //**** SideViewPresent - working on 
    BOOL isTopView;
    BOOL isInEdit;
    IBOutlet UIView * topView;
//    IBOutlet UIView * bottomView;
}


//-(IBAction)onSwipe:(UISwipeGestureRecognizer*)recognizer;
-(IBAction)onClick:(UIButton* )sender;
//-(IBAction)sideViewPresent:(UIButton* )sender;


@end


// A custom UITableView Cell that contains at least one UIImageView and two strings.

// When clicking on an item in the list, move to a second view with more information about this item.

// ***** Create your own icon for this application and add it to your project
// ***** Create your own launch image default.png and add it to your project.
// **** A UILabel at the top with the title of your application. The UILabel should have a background color.
// **** A UITableView displaying a list of items. The data in this list can be anything you want. At least twenty items must be in the list initially.
// ***** An edit button that allows for the removal/deletion of any item in the list. The edit button changes the UITableView to edit mode and shows the minus button for deletion.

