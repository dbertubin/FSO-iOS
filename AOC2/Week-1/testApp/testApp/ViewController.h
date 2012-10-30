//
//  ViewController.h
//  testApp
//
//  Created by Derek Bertubin on 10/22/12.
//  Copyright (c) 2012 Derek Bertubin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AssignmentFactory.h"

@interface ViewController : UIViewController
{
    UILabel * videoLabel;
    int timeToCompleteVideos;
    UILabel * videoTimeEstimation;
    UILabel * discussionLabel;
    UILabel * discussionTimeLabel;
    NSString *discussionTimeString;
    int timeToCompleteDiscussion;
    int timeToCompleteProject;
    UILabel * projectLabel;
    UILabel * projectDetailLabel;
    NSString * projectDetailLabelString;
    UILabel * titleLable;
    Video * weekOneVideos;
    Discussion * weekOneDiscussion;
    Project * weekOneProject;
    // NSString * projectString;
    //NSString * discussionString;
    //NSString * videoString;
}




@end
