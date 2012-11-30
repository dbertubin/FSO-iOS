//
//  DetailViewController.h
//  planner
//
//  Created by Derek Bertubin on 11/26/12.
//  Copyright (c) 2012 Derek Bertubin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"
#import "WebViewController.h"
                                                
@interface DetailViewController : UIViewController  // <DetailDelegate> //If you uncomment this out it will say that the DetailDelegate protocol cannot be found ... I dont know why


@property NSString * detailLabelText;
@property NSString * detailViewText;

    // IB vars 
@property (weak, nonatomic)IBOutlet UILabel * textLabel;
@property (weak, nonatomic)IBOutlet UIButton * backButton;
@property (weak, nonatomic)IBOutlet UITextView * detailView; 

@property (weak, nonatomic) IBOutlet UILabel *urlLabel;

-(IBAction)onClick:(UIButton* )sender;

@end
