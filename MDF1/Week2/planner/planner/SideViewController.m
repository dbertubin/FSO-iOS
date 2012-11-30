//
//  SideViewController.m
//  planner
//
//  Created by Derek Bertubin on 11/14/12.
//  Copyright (c) 2012 Derek Bertubin. All rights reserved.
//

#import "SideViewController.h"

@interface SideViewController ()

@end

@implementation SideViewController

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

-(IBAction)backToViewController:(UIButton * )sender
{
    if (backButton != nil)
    {
        [self dismissViewControllerAnimated:YES completion:nil];
    }
}

-(IBAction)delete:(UIButton*)sender
{
    
}

@end
