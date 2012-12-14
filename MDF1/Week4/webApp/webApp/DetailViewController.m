//
//  DetailViewController.m
//  webApp
//
//  Created by Derek Bertubin on 12/10/12.
//  Copyright (c) 2012 Derek Bertubin. All rights reserved.
//

#import "DetailViewController.h"
#import "FirstViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

@synthesize textView,textViewText;

@synthesize temp,updated,name, weather;
@synthesize weatherLabelText,tempLabelText,updatedLabelText,nameLabelText;

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
//    weather.text = weatherLabelText;
//    name.text = nameLabelText;
//    updated.text = updatedLabelText;
//    temp.text = tempLabelText;
    textView.text = textViewText;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

#pragma mark -Instructions
//Item detail view
//Using a UITextView, display the xml for this selected item as text.
