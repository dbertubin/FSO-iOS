//
//  ViewController.h
//  test
//
//  Created by Derek Bertubin on 11/15/12.
//  Copyright (c) 2012 Derek Bertubin. All rights reserved.
//

#import <UIKit/UIKit.h>



@interface ViewController : UIViewController
{
    IBOutlet UIView * topView;
    IBOutlet UIView * bottomView;
    
    IBOutlet UIButton * test;
    IBOutlet UIButton * button;

    CGRect originalFramePosition;

    BOOL isTopView;
}

@end
