//
//  AddEventScreen.h
//  planner
//
//  Created by Derek Bertubin on 11/7/12.
//  Copyright (c) 2012 Derek Bertubin. All rights reserved.
//

#import <UIKit/UIKit.h>

// Custome delegate to relay the saved string to UI textField 
@protocol AddEventDelegate <NSObject>

@required
-(void)eventRelay:(NSString *)eventStringConcat;

@end

@interface AddEventScreen : UIViewController

{
    //Custom Delegate
    id <AddEventDelegate> customAddEventDelegate;
    
    // IBOulest - So i heard that declaring IBOutlet like this is not correct 
    IBOutlet UITextField * textField ;
    IBOutlet UIDatePicker * datePicker;
    
    // vars
    NSString * eventName;
    NSDate * dateValue;
    NSDateFormatter * formattedDate;
    NSString * dateString;
    NSString * eventStringConcat;
    UIAlertView * alert;

}

@property (strong) id <AddEventDelegate> customAddEventDelegate
;

-(IBAction)onClick:(UIButton* )sender;

@end
