//
//  Video.m
//  testApp
//
//  Created by Derek Bertubin on 10/25/12.
//  Copyright (c) 2012 Derek Bertubin. All rights reserved.
//

#import "Video.h"

@implementation Video

//sythesizing getters and setters
@synthesize numberOfVideos,timePerVideo;

-(id)init
{   // initializing from superclass or parent class BaseAssignment inheriting from it
    self = [super init];
    if (self != nil) {
        [self setNumberOfVideos:5];             //setting unique Properties
        [self setTimePerVideo:15];
        [self setAssignmentTimeMinutes:0];      //setting inherited property
    }
    return self;
}


// override ofbase calc method
-(void)calcAssgnmentTime
{
    [self setAssignmentTimeMinutes:numberOfVideos * timePerVideo];
    NSLog(@"You will need about %d to complete your assigment", self.assignmentTimeMinutes);
}


@end
