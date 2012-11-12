//
//  ViewController.h
//  planner
//
//  Created by Derek Bertubin on 11/4/12.
//  Copyright (c) 2012 Derek Bertubin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddEventScreen.h"

@interface ViewController : UIViewController <AddEventDelegate>

{
    NSString *eventData;
    
    //IBOutlets
    IBOutlet UITextView * eventList;
}
-(IBAction)onClick:(UIButton*)sender;


@end
