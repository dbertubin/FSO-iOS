//
//  DetailViewController.m
//  planner
//
//  Created by Derek Bertubin on 11/26/12.
//  Copyright (c) 2012 Derek Bertubin. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

// Feeds data from UITableView Cell to Detail Label
-(void)detailRelay:(NSString*)cellText
{
    if (textLabel != nil)
    {
        textLabel.text = cellText;
    }
}

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

-(IBAction)onClick:(UIButton *)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end