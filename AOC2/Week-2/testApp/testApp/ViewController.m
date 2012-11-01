//
//  ViewController.m
//  testApp
//
//  Created by Derek Bertubin on 10/30/12.
//  Copyright (c) 2012 Derek Bertubin. All rights reserved.
//

#import "ViewController.h"
#import "InfoViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    // loads 0 as the intial display value 
    calcDisplay.text        =   @"0";
    
    // couldnt find the info button on the xib so hard coded it in 
    infoButton = [UIButton buttonWithType:UIButtonTypeInfoDark];
    if (infoButton != nil)
    {
         infoButton.frame = CGRectMake(280.0f, 470.0f, 20, 20);
    }
    // set button target to the onClick method - this is code from AOC 1 week 4
    [infoButton addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:infoButton];
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// the power switch on Off
-(IBAction)onSwitch:(UISwitch *)sender
{
    if (sender != nil)
    {
        if (sender.on == TRUE)              // on position - everything is enabled
        {
            one.enabled             =   YES;
            two.enabled             =   YES;
            three.enabled           =   YES;
            four.enabled            =   YES;
            five.enabled            =   YES;
            six.enabled             =   YES;
            seven.enabled           =   YES;
            eight.enabled           =   YES;
            nine.enabled            =   YES;
            zero.enabled            =   YES;
            plus.enabled            =   YES;
            equals.enabled          =   YES;
            backgroundToggle.enabled =  YES;
            infoButton.enabled      =   YES;
            clear.enabled           =   YES;
            calcDisplay.text        =   @"0";
        } else if (sender.on == FALSE)      // off position everything is off
        {
            one.enabled             =   NO;
            two.enabled             =   NO;
            three.enabled           =   NO;
            four.enabled            =   NO;
            five.enabled            =   NO;
            six.enabled             =   NO;
            seven.enabled           =   NO;
            eight.enabled           =   NO;
            nine.enabled            =   NO;
            zero.enabled            =   NO;
            plus.enabled            =   NO;
            equals.enabled          =   NO;
            backgroundToggle.enabled =  NO;
            infoButton.enabled      =   NO;
            clear.enabled           =   NO;
            calcDisplay.text        =  @"";  //turns of the display when switch is in the off position
        }
        
    }
}

// method for the Segmented Control 
-(IBAction)bgColorSelector:(UISegmentedControl *)sender
{
    if (sender != nil) {
        segIndex = sender.selectedSegmentIndex;  //gives index of selector and casts it into a usable int
        if (segIndex == 0)
        {
            self.view.backgroundColor = [UIColor whiteColor]; // simple white color 
        }else if (segIndex == 1 )
        {
            self.view.backgroundColor = [UIColor blueColor];  // simple blue color 
        }else if (segIndex == 2)
        {
            self.view.backgroundColor = [UIColor greenColor]; // simple green
        }
    }
    
}


// on clear this probably can be combined into one funtion with the onClick 
-(IBAction)onClear:(UIButton *)sender
{
    if (sender != nil)
    {   // resets everything to 0 
        calcDisplay.text = [NSString stringWithFormat:@"%d",pressedNumVal];  /// resets the deplayed val
        pressedNumVal = 0;
    }
    
}


-(IBAction)valuePressed:(UIButton *)sender
{
    if (sender != nil)
    {   // first digit  // changes  inital digits place value and then add subsequent value 
        pressedNumVal = pressedNumVal * 10 + [sender tag];
        
        //displays mutated value 
        calcDisplay.text = [NSString stringWithFormat: @"%d", pressedNumVal];
        
    }
}

// the magic happens here but 
-(IBAction)calc:(UIButton* )sender
{
    if (sender != nil) {
        if (sender.tag == 10) {
            result = pressedNumVal;
            
        } else if (sender.tag == 20)
        {
            result = result + pressedNumVal;  /// originall amount casted to new val plus new ammount
        }
    }
    pressedNumVal=0;  // resets the number to 0 after conditional
    calcDisplay.text = [NSString stringWithFormat:@"%d",result];  // displays result
}


-(IBAction)onClick:(UIButton *)sender
{
    InfoViewController * infoView = [[InfoViewController alloc] initWithNibName:@"InfoViewController" bundle:nil];
    
    if (infoView != nil) {
        [self presentViewController:infoView animated:YES completion: NULL
         ];
    }
}


@end

