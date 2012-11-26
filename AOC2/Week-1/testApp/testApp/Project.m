//
//  Project.m
//  testApp
//
//  Created by Derek Bertubin on 10/25/12.
//  Copyright (c) 2012 Derek Bertubin. All rights reserved.
//

#import "Project.h"

@implementation Project
//synth getters and setters
@synthesize timeForResearch,prepAndDelivery,workTime;

//intialize
-(id)init
{   // initializing from superclass or parent class BaseAssignment inheriting from it
    self = [super init];
    if (self != nil)
    {
        [self setTimeForResearch:0];
        [self setPrepAndDelivery:0];
        [self setWorkTime:0];
    }
    return self;
}

-(void)calcAssignmentTime
{
    [self setAssignmentTimeMinutes:(timeForResearch + prepAndDelivery + workTime)];
  //  NSLog(@"the time for this assignment should be %d", self.assignmentTimeMinutes);
}

@end
