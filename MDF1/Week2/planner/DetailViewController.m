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
@synthesize urlLabel;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom Initalization
        self.title = @"Details";
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(onClick:)];
    urlLabel.userInteractionEnabled = YES;
    [urlLabel addGestureRecognizer:tap];
    
    textLabel.text = detailLabelText;
    
    detailView.text = detailViewText;
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)onClick:(id)sender
{
    
    WebViewController * webView = [[WebViewController alloc] initWithNibName:@"WebViewController" bundle:nil];
    
    if (webView != nil) {
        [self presentViewController:webView animated:YES completion: NULL
         ];
    }
    
//    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://web.ebscohost.com.oclc.fullsail.edu:81/ehost/ebookviewer/ebook/nlebk_354182_AN?sid=cc58e805-b56d-488c-b9d0-d332793ada1d@sessionmgr13&vid=6"]];
    
    
}

@end
