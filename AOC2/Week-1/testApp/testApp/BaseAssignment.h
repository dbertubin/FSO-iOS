//
//  BaseAssignment.h
//  testApp
//
//  Created by Derek Bertubin on 10/25/12.
//  Copyright (c) 2012 Derek Bertubin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BaseAssignment : NSObject
{ // Declare as int
    int assignmentEnum;
}

// Create enums
typedef enum {
    VIDEO,
    DISCUSSION,
    PROJECT
} assignmentEnum;

// Delare universal class properties
@property NSString * assignmentName;
@property int assignmentTimeMinutes;

//init
-(id)init;

//method to calc time for time of assignment

-(void)calcAssignmentTime;


@end
