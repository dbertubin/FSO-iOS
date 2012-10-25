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
        [self setNumberOfQuestions: 3];             //setting unique Properties
        [self setWordsReqPerAnswer: 150];
        [self setTotalWordsPerDiscussion:0];
        [self setTotalTimeExpected:0];
        [self setAssignmentTimeMinutes:0];      //setting inherited property
        
    }
    return self;
}

-(void)calcAssgnmentTime
{
    [self setTotalWordsPerDiscussion:(numberOfQuestions * wordsReqPerAnswer)];
    [self setTotalTimeExpected:(totalWordsPerDiscussion % 10)];
    [self setAssignmentTimeMinutes:totalTimeExpected];
    NSLog(@"This discussion should take %d minutes", self.assignmentTimeMinutes);
    
}

@end
