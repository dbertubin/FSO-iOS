//
//  ViewController.m
//  test
//
//  Created by Derek Bertubin on 11/15/12.
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

    topView.frame = originalFramePosition;

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction) onClick: (UIButton*) sender
{
    if(isTopView)
    {
    // announces the animation
    [UIView beginAnimations:nil context:nil];
    
    // sets the animation duration
    [UIView setAnimationDuration:0.5f];
    
    
    topView.frame = CGRectMake(220.0f, 0.0f, topView.frame.size.width, topView.frame.size.height);
    isTopView = NO;
    
    // commits animation
    [UIView commitAnimations];
    }
    else

    if (!isTopView)
    {
        [UIView beginAnimations:nil context:nil];
        
        // sets the animation duration
        [UIView setAnimationDuration:0.5f];
        
        // if the bottom view is the current move the top view over it
        topView.frame = originalFramePosition;
        isTopView = YES;
        
        // commits animation
        [UIView commitAnimations];
    }
        
}

@end
