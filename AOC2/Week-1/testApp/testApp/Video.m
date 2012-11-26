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
    
    if (self != nil)
    {
    
        [self setNumberOfVideos:0];             //setting unique Properties
        [self setTimePerVideo:15];
      
        
    }
    return self;
}


// override base calc method
-(void)calcAssignmentTime
{
    [self setAssignmentTimeMinutes:(numberOfVideos * timePerVideo)];

}


@end
