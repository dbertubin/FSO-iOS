//
//  AddEventScreen.m
//  planner
//
//  Created by Derek Bertubin on 11/7/12.
//  Copyright (c) 2012 Derek Bertubin. All rights reserved.
//

#import "AddEventScreen.h"

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
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // ah this was tricky tricky as it it is not in the xib...;)
    datePicker.minimumDate = [NSDate date];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// Show and hide Keyboard Using NC
- (void)viewWillAppear:(BOOL)animated
{
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillShow:) name:UIKeyboardWillShowNotification object:nil];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillHide:) name:UIKeyboardWillHideNotification object:nil];
    
    [super viewWillAppear:animated];
}

// Show method
-(void)keyboardWillShow:(NSNotification*)notification
{
    
}

// Hide method
-(void)keyboardWillHide:(NSNotification*)notification
{
    
}


-(IBAction)onClick:(UIButton*)sender

{
        
    switch (sender.tag)
    
    {
        case SAVE_BUTTON:
        {
            eventName = textField.text;
            dateValue = datePicker.date;
            if (dateValue != nil) {
                formattedDate =[[NSDateFormatter alloc]init];
                if (formattedDate != nil) {
                    [formattedDate setDateFormat:@"EE, MMM d, yyyy hh:mm a"];
                    dateString = [formattedDate stringFromDate:dateValue];
                }
            }

            if (customAddEventDelegate != nil)
            {
                if (eventString != nil) {
                    eventString = [[NSString alloc]initWithString:eventName];                }
                
                [customAddEventDelegate eventRelay:eventString];
                [self dismissViewControllerAnimated:YES completion:nil];
            }
            NSLog(@"%@",eventString);
        }
            
            
            break;
            
        case CLOSE_BUTTON:
        {
            // Close Keyboard
            [textField resignFirstResponder];
            
        }
            break;
            
        case CANCEL_BUTTON:
        {
            [self dismissViewControllerAnimated:YES completion:nil];
        }
        default:
            break;
    }
}

@end
