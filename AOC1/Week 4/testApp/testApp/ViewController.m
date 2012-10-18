//
//  ViewController.m
//  testApp
//
//  Created by Derek Bertubin on 10/17/12.
//  Copyright (c) 2012 Derek Bertubin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad

{
    //Instructions
    //1. For your final project you will be creating an application that brings together a lot of what you have learned this month.
    
    //2. You will be using UIButtons, UIAlertViews, UILabels, NSDate, click handlers, and UIView properties to create your application.
    
    //3. The project is divided up into three sections on a single page. The login portion, the date portion and the information section. Instructions for each section are separated out below.
        
    //4. Please note, that you will be creating a single onClick function that all three buttons will connect to. Please use the tag element of the button to determine which button was clicked.
    
    
    
        
    // LOG IN **************************
    //1. Create a UILabel near the top of your screen with the text "Username:" in it.
    //2. Create a UITextField to the right of the username label
    //3. Create a rounded rectangle UIButton of any color under the UITextField with the text "Login" on it.
    //4. Create another UILabel beneath with the default text "Please Enter Username".
    //5. Add a target to the UIButton to call a function called onClick when the user presses the Login button.
    //6. If the user has not entered any text into the UITextField, display in the UILabel, "Username cannot be empty". Otherwise, display "User: username has been logged in".
    //7. Hint: NSString has a property called length that tells you how many characters are in the string.
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
