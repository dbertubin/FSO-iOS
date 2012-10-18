//
//  ViewController.m
//  testApp
//
//  Created by Derek Bertubin on 10/17/12.
//  Copyright (c) 2012 Derek Bertubin. All rights reserved.
//

#import "ViewController.h"

#define BUTTON_LOGIN 0
#define BUTTON_DATE  1
#define BUTTON_INFO  2

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad

{
    self.view.backgroundColor = [UIColor colorWithRed:0.541 green:0.537 blue:0.561 alpha:1]; /*#8a898f*/
    //Instructions
    //1. For your final project you will be creating an application that brings together a lot of what you have learned this month.
    
    //2. You will be using UIButtons, UIAlertViews, UILabels, NSDate, click handlers, and UIView properties to create your application.
    
    //3. The project is divided up into three sections on a single page. The login portion, the date portion and the information section. Instructions for each section are separated out below.
    
    
    
    
    
    
    // LOG IN **************************
    //1. Create a UILabel near the top of your screen with the text "Username:" in it.
    UILabel * userName = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 10.0f, 100, 25)];
    if (userName != nil) {
        
        userName.backgroundColor = [UIColor colorWithRed:0.541 green:0.537 blue:0.561 alpha:1]; /*#8a898f*/

        userName.text = @"Username: ";
        userName.textColor = [UIColor colorWithRed:1 green:1 blue:1 alpha:1]; /*;#ffffff*/
        
        [self.view addSubview:userName];
        
    }
    
    
    //2. Create a UITextField to the right of the username label
    userNameInput = [[UITextField alloc] initWithFrame:CGRectMake(105.0f, 10.0f,200,25)];
    if (userNameInput != nil)
    {
        userNameInput.borderStyle = UITextBorderStyleRoundedRect;
        [self.view addSubview:userNameInput];
    }
    
    //3. Create a rounded rectangle UIButton of any color under the UITextField with the text "Login" on it.
    UIButton * loginButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if (loginButton != nil)
    {
        loginButton.frame = CGRectMake(225.0f, 45.0f, 79, 30);
        [loginButton setTitle:@"Login" forState:UIControlStateNormal];
        
        loginButton.tag = BUTTON_LOGIN;
        
        //5. Add a target to the UIButton to call a function called onClick when the user presses the Login button.
        [loginButton addTarget:self action:@selector(onClick) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:loginButton];
    }
    
    
    
    //4. Create another UILabel beneath with the default text "Please Enter Username".
    feedBack = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 85.0f, 320, 30)];
    if (feedBack != nil)
    {
        feedBack.text = @"Please Enter Username";
        feedBack.textAlignment = NSTextAlignmentCenter;
        [self.view addSubview:feedBack];
    }
    
    
    
    
    
    
    //******Date - this section will display a UIAlertView with the current date and time in it using an NSDate object.*****
    
    //1. Create a UIButton using the rounded rectangle type. Give this button any color you wish.
    //2. Add the text "Show Date" to the button
    //3. Add an action to the button that when clicked, it will call the same onClick handler you already defined. Make sure to add a tag to the date button so you know which one was pressed.
    //4. Display a UIAlertView with the current date and time displayed in the format seen in the dateAlert graphic in the assets section of this project assignment. You can either format the date and time manually or use the date and time styles. You must use an NSDate object to gather the date and time information.
    
    
    //*****Information - this section will display the text "This application was created by: Firstname Lastname" in a label when the info button is clicked.
    
    //1. Create a UIButton using either the light or dark info type and position it somewhere near the bottom of the screen.
    //2. Create a UILabel beneath it that contains no initial text.
    //3. Hook up an action to the info button to have it call the onClick handler you created earlier.
    //4. When the button is pressed, have the text "This application was created by: Firstname Lastname" appear in the info UILabel. Please replace firstname lastname with your name.
    
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}


//4. Please note, that you will be creating a single onClick function that all three buttons will connect to. Please use the tag element of the button to determine which button was clicked.

-(void)onClick
{
    
    //7. Hint: NSString has a property called length that tells you how many characters are in the string.
    NSString * userNameInputText = [userNameInput text];
    int strLength = userNameInputText.length;
    NSLog(@"the length is %d", strLength );
    
    //6. If the user has not entered any text into the UITextField, display in the UILabel, "Username cannot be empty". Otherwise, display "User: username has been logged in".
    if (strLength != 0)
    {
        feedBack.text = [NSString stringWithFormat:@"User: %@ has been logged in", userNameInputText];
        feedBack.textColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:1] /*#000000*/ /*#ff0000*/;

        UIAlertView * alertView = [[UIAlertView alloc] initWithTitle:@"Yay!" message:@"Looks like you the button works. " delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles: nil];
        if (alertView != nil)
        {
            [alertView show];
        }
    }
        
    else
    {
        feedBack.text = @"Username cannot be empty";
        feedBack.textColor = [UIColor colorWithRed:1 green:0 blue:0 alpha:1] /*#ff0000*/;
    }

}
    
    
    


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
