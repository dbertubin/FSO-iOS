//
//  WebViewController.m
//  planner
//
//  Created by Derek Bertubin on 11/29/12.
//  Copyright (c) 2012 Derek Bertubin. All rights reserved.
//

#import "WebViewController.h"

@interface WebViewController ()

@end

@implementation WebViewController

@synthesize webView;
@synthesize doneButton;
@synthesize leftSwipe;
@synthesize rightSwipe;
@synthesize backButton;
@synthesize forwardButton;

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
    NSString *urlAddress = @"http://web.ebscohost.com.oclc.fullsail.edu:81/ehost/ebookviewer/ebook/nlebk_354182_AN?sid=cc58e805-b56d-488c-b9d0-d332793ada1d@sessionmgr13&vid=6";
    
    NSURL *url = [NSURL URLWithString:urlAddress];
    
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    
    [webView loadRequest:requestObj];
    
#pragma mark - Swipe Gestures 
    leftSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(onSwipe:)];
    // add swipe direction
    leftSwipe.direction = UISwipeGestureRecognizerDirectionLeft;
    // add gesture regonizer
    
    rightSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(onSwipe:)];
    // add swipe direction
    rightSwipe.direction = UISwipeGestureRecognizerDirectionRight;
    // add gesture regonizer
    [webView addGestureRecognizer:leftSwipe];
    [webView addGestureRecognizer:rightSwipe];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)onClick:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];

}

#pragma mark - Web Nav ToolBar 
-(IBAction)onNav:(id)sender
{
    if (sender == backButton)
    {
        if ([self.webView canGoBack])
        {
            [self.webView goBack];
        }
    }
    else if (sender == forwardButton)
    {
        if ([self.webView canGoForward])
        {
            [self.webView goForward];
        }
    }
}

#pragma mark - Web Nav Swipe 
-(IBAction)onSwipe:(UIGestureRecognizer*)sender
{
    if (sender == leftSwipe)
    {
        if ([self.webView canGoBack])
        {
            [self.webView goBack];
        }
    }
    else if (sender == rightSwipe)
    {
        if ([self.webView canGoForward])
        {
            [self.webView goForward];
        }
    }
}

@end
