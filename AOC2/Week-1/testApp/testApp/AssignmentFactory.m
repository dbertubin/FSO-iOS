//
//  AssignmentFactory.m
//  testApp
//
//  Created by Derek Bertubin on 10/25/12.
//  Copyright (c) 2012 Derek Bertubin. All rights reserved.
//

#import "AssignmentFactory.h"

@implementation AssignmentFactory
// Implement Static Method
+(BaseAssignment *) createNewAssignment:(int)assignmentType
{
    // check to see what type of subclass is coming thru
    
    // if a type requested - return type allocated and initalized
    if (assignmentType == VIDEO)
    {
        return [[Video alloc]init];
    }
    else if (assignmentType == DISCUSSION)
    {
        return [[Discussion alloc]init];
    }
    else if (assignmentType == PROJECT)
    {
        return [[Project alloc]init];
    }
    else return nil;
}

@end
