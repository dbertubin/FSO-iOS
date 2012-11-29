//
//  SideViewController.h
//  planner
//
//  Created by Derek Bertubin on 11/14/12.
//  Copyright (c) 2012 Derek Bertubin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SideViewController : UIViewController

{
    IBOutlet UIButton * backButton;
    IBOutlet UIButton * deleteAll;
}

-(IBAction)backToViewController:(UIButton * )sender;

-(IBAction)delete:(UIButton*)sender;
@end
