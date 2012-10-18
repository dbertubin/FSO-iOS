//
//  ViewController.h
//  testApp
//
//  Created by Derek Bertubin on 10/17/12.
//  Copyright (c) 2012 Derek Bertubin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

{
    UITextField * userNameInput;
    UILabel * feedBack;
    UILabel * userName;
    UIButton * loginButton;
    UIButton * dateButton;
    UIAlertView * alertView;
    NSDateFormatter *dateFormater;
    NSDate * date;
    NSMutableString * dateStr;
    UIButton * infoButton;
    UILabel * infoLabel;
}

- (void)onClick:(UIButton *)button;
@end
