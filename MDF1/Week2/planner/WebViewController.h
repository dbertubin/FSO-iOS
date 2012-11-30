//
//  WebViewController.h
//  planner
//
//  Created by Derek Bertubin on 11/29/12.
//  Copyright (c) 2012 Derek Bertubin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WebViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIWebView *webView;

@property (weak, nonatomic) IBOutlet UIBarButtonItem *doneButton;

@property (strong, nonatomic) IBOutlet UISwipeGestureRecognizer *rightSwipe;

@property (strong, nonatomic) IBOutlet UISwipeGestureRecognizer *leftSwipe;

@property (weak, nonatomic) IBOutlet UIBarButtonItem *backButton;

@property (weak, nonatomic) IBOutlet UIBarButtonItem *forwardButton;


-(IBAction)onClick:(id)sender;
-(IBAction)onSwipe:(id)sender;
-(IBAction)onNav:(id)sender;
@end
