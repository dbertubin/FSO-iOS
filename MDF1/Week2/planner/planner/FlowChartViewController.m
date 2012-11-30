//
//  FlowChartViewController.m
//  planner
//
//  Created by Derek Bertubin on 11/28/12.
//  Copyright (c) 2012 Derek Bertubin. All rights reserved.
//

#import "FlowChartViewController.h"

@interface FlowChartViewController ()

@end

@implementation FlowChartViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Flow Chart", @"Flow Chart");
        self.tabBarItem.image = [UIImage imageNamed:@"Views"];
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

@end
