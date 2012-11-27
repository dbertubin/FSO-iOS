//
//  DetailViewController.m
//  planner
//
//  Created by Derek Bertubin on 11/26/12.
//  Copyright (c) 2012 Derek Bertubin. All rights reserved.
//

#import "DetailViewController.h"
#import "ViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

@synthesize detailLabelText;
@synthesize textLabel;
@synthesize backButton;
@synthesize detailView;
@synthesize detailViewText;


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
    
    textLabel.text = detailLabelText;
    
    detailView.text = detailViewText;
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)onClick:(UIButton *)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
