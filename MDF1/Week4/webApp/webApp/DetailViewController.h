//
//  DetailViewController.h
//  webApp
//
//  Created by Derek Bertubin on 12/10/12.
//  Copyright (c) 2012 Derek Bertubin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FirstViewController.h"


@interface DetailViewController : UIViewController

@property NSString * nameLabelText;
@property NSString * weatherLabelText;
@property NSString * tempLabelText;
@property NSString * updatedLabelText;

@property (weak, nonatomic) IBOutlet UITextView *textView;
@property NSString * textViewText;
@property (weak, nonatomic) IBOutlet UILabel *name;
@property (weak, nonatomic) IBOutlet UILabel *temp;
@property  IBOutlet UILabel *weather;
@property  IBOutlet UILabel *updated;

@end
