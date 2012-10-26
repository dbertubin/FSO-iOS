//
//  AssignmentFactory.h
//  testApp
//
//  Created by Derek Bertubin on 10/25/12.
//  Copyright (c) 2012 Derek Bertubin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseAssignment.h"
#import "Video.h"
#import "Discussion.h"
#import "Project.h"

@interface AssignmentFactory : NSObject

//Create Static Class Method

                                        // enum val declared in BaseAssignment.h 
+(BaseAssignment *) createNewAssignment:(int) assignmentType;

    // check to see what type of subclass is coming thru


@end
