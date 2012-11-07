//
//  AddEventScreen.m
//  planner
//
//  Created by Derek Bertubin on 11/7/12.
//  Copyright (c) 2012 Derek Bertubin. All rights reserved.
//

#import "AddEventScreen.h"

@interface AddEventScreen ()

@end

@implementation AddEventScreen

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
    // Do any additional setup after loading the view from its nib.
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
    if (sender != nil)
    {   // Cancel 
        if (sender.tag == 0)
        {
            [self dismissViewControllerAnimated:TRUE completion:nil];
        }
        else if (sender.tag == 2)
        {   // Close Keyboard 
            [textField resignFirstResponder];
            
        }
    }
}

@end
