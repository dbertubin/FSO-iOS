//
//  ViewController.m
//  testApp
//
//  Created by Derek Bertubin on 10/30/12.
//  Copyright (c) 2012 Derek Bertubin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    
    calcDisplay.text        =   @"0";
    
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
        if (sender.on == TRUE)              // on position
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
            info.enabled            =   YES;
            calcDisplay.text        =   @"0";
        } else if (sender.on == FALSE)      // off position
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
            info.enabled            =   NO;
            calcDisplay.text        =  @"";  //turns of the display when switch is in the off position
        }
        
    }
}

-(IBAction)bgColorSelector:(UISegmentedControl *)sender
{
    if (sender != nil) {
        int selectIndex = sender.selectedSegmentIndex;
        if (selectIndex == 0)
        {
            self.view.backgroundColor = [UIColor whiteColor];
        }else if (selectIndex == 1 )
        {
            self.view.backgroundColor = [UIColor blueColor];
        }else if (selectIndex == 2)
        {
            self.view.backgroundColor = [UIColor greenColor];
        }
    }
    
}

-(IBAction)onClick:(UIButton *)sender
{
    
}


-(IBAction)onClear:(UIButton *)sender
{
    if (sender != nil)
    {
        calcDisplay.text = @"0";
    }
    
}


-(IBAction)valuePressed:(UIButton *)sender
{
    
}




@end
//********If you find that this activity takes you significantly less or more time than this estimate, please contact me for guidance.
//********This project will entail creating a simplified calculator application. Only addition will need to be supported to eliminate the need for negative or floating point numbers.
//********For this project, the requirements will be feature based and it will be up to you to architect and program the calculator how ever you feel necessary to achieve the functionality.


// 1. The calculator must contain the numbers 0 to 9. No decimal button is needed.
// 2.A on/off switch must be present. When the switch is in the off position, no input is accepted. When the switch is in moved to the on position, all operands and operators input previously should be cleared.
// 3.A plus button must be present.
// 4.An equal button must be present and trigger the add calculation using the two operands.
// 5.A clear button should be present. The clear button will clear an inputted operands and operators putting the calculator into a clean state.
// 6.Add a section using a segmented control that allows for the background color of the view to change from the default white to blue or green.
// 7.Include an info button that will display a second view containing your name.
// 8.A button on the second view will need to be added to allow the second view to close.
