//
//  DetailViewController.h
//  planner
//
//  Created by Derek Bertubin on 11/26/12.
//  Copyright (c) 2012 Derek Bertubin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"


@interface DetailViewController : UIViewController  // <DetailDelegate>


{
    
    IBOutlet UILabel * textLabel;
    IBOutlet UIButton * backButton;
}

-(IBAction)onClick:(UIButton* )sender;

@end
