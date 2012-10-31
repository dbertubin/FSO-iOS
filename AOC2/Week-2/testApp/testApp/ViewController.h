//
//  ViewController.h
//  testApp
//
//  Created by Derek Bertubin on 10/30/12.
//  Copyright (c) 2012 Derek Bertubin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    IBOutlet UITextField * calcDisplay;
    IBOutlet UISwitch * calcOnOffToggle;
    IBOutlet UIButton * zero;
    IBOutlet UIButton * one;
    IBOutlet UIButton * two;
    IBOutlet UIButton * three;
    IBOutlet UIButton * four;
    IBOutlet UIButton * five;
    IBOutlet UIButton * six;
    IBOutlet UIButton * seven;
    IBOutlet UIButton * eight;
    IBOutlet UIButton * nine;
    IBOutlet UIButton * clear;
    IBOutlet UIButton * plus;
    IBOutlet UIButton * equals;
    IBOutlet UISegmentedControl * backgroundToggle;
    IBOutlet UIButton * info;
    

}



-(IBAction)onSwitch:(UISwitch *)sender;
-(IBAction)onClick:(UIButton *)sender;
-(IBAction)onClear:(UIButton *)sender;
-(IBAction)valuePressed:(UIButton *)sender;
-(IBAction)bgColorSelector:(UISegmentedControl *)sender;

@end
