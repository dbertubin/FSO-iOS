//
//  Discussion.m
//  testApp
//
//  Created by Derek Bertubin on 10/25/12.
//  Copyright (c) 2012 Derek Bertubin. All rights reserved.
//

#import "Discussion.h"

@implementation Discussion
//synth getters and setters
@synthesize numberOfQuestions,wordsReqPerAnswer,totalWordsPerDiscussion, totalTimeExpected;

//intialize
-(id)init
{   // initializing from superclass or parent class BaseAssignment inheriting from it
    self = [super init];
    if (self != nil) {
        [self setNumberOfQuestions: 0];             //setting unique Properties
        [self setWordsReqPerAnswer: 0];
        [self setTotalWordsPerDiscussion:0];
        [self setTotalTimeExpected:0];
        [self setAssignmentTimeMinutes:0];      //setting inherited property
        
    }
    return self;
}

-(void)calcAssignmentTime
{
    [self setTotalWordsPerDiscussion:(numberOfQuestions * wordsReqPerAnswer)];
    [self setTotalTimeExpected:(totalWordsPerDiscussion / 10)];
    [self setAssignmentTimeMinutes:totalTimeExpected];
    
}

@end
