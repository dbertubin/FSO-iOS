//
//  BaseAssignment.m
//  testApp
//
//  Created by Derek Bertubin on 10/25/12.
//  Copyright (c) 2012 Derek Bertubin. All rights reserved.
//

#import "BaseAssignment.h"

@implementation BaseAssignment

// sythesize getters and setters for properties declared in header
@synthesize instructions,assignmentTimeMinutes;

// init the base, instantiating and setting assignment time to 0

-(id)init;
{
    // initializing from superclass NSOject inheriting from it
    self = [super init];
    if (self != nil)
    {
        [self setAssignmentTimeMinutes:0];      // using sythesized setters
        [self setInstructions:nil];
    }
    return self;
}

-(void)calcAssgnmentTime
{
    NSLog(@"You will need about %d to complete your assigment", assignmentTimeMinutes);
}

@end
