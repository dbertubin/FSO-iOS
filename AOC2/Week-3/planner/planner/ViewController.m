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

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

//  *****Instructions*****
//  This project will entail creating a simplified event planning application. The application will contain two main views. The primary view displays a list of the events that have been added. The secondary view allows for the creation of an event containing a description and a date/time control.
//  For this project, the requirements will be feature based and it will be up to you to architect and program the application how ever you feel necessary to achieve the functionality.

//  *****Primary View*****
//  A label will be placed at the top of the view containing the text 'Date Planner'. This text should be centered.
//  A UITextView will take up a majority of the view. This textview will display the list of events that the user has added.
//  A UIButton will be at the bottom of the view with the text "Add Event". Clicking on this button will popup the second view.
//  When the Add Event view closes, the newly created event text will be added to the UITextView.

//  ****8Add Event View*****
//  A Save button appears at the top. When clicking on Save, the event description text and date/time information is collected and sent back to the primary view as the view is dismissed.
//  A Close Keyboard button is also on the view. When clicking on this button, the keyboard that is opened will be dismissed.
//  A Label with the text Event appears above a UITextField where the description will be entered.
//  A UIDatePicker control is displayed at the bottom of the view. The date picker must always have a minimum date of the current date.
//  A UILabel contains the text 'Select the date and time of the event'.
//  Take a look at the example graphics to get an idea as to what your application should look like.
//  Hints - this project will require the use of a custom delegate for passing data between the views. Also, to create carriage returns in your text, using the newline escape character \n
//  Please make sure that your project compiles as any project turned in without code that builds completely will receive a 0.
