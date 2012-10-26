
//
//  ViewController.m
//  testApp
//
//  Created by Derek Bertubin on 10/22/12.
//  Copyright (c) 2012 Derek Bertubin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    // *****Video*****
    
    // use AssignmentFactory to create video class
    Video * weekOneVideos = (Video *)[AssignmentFactory createNewAssignment:VIDEO];
    if (weekOneVideos !=nil)
    {
        //set properties 
        [weekOneVideos setAssignmentName:@"Week 1 Videos"];
        [weekOneVideos setNumberOfVideos:6];
        [weekOneVideos calcAssignmentTime];     // call custom method
        
        // assign assignmentTimeMinutes to an int val 
        timeToCompleteVideos = [weekOneVideos assignmentTimeMinutes];
        
        // create string for label using property values 
        videoString = [NSString stringWithFormat:@"There are %d videos to watch; each one should take %d minutes to complete.", weekOneVideos.numberOfVideos, weekOneVideos.timePerVideo];
        
        // create label for string 
        videoLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 320.0f, 40.0f)];
        if (videoLabel != nil) {
            videoLabel.backgroundColor= [UIColor colorWithRed:0.992 green:0.729 blue:0.11 alpha:1]; /*#fdba1c*/
            videoLabel.text = videoString;
            videoLabel.numberOfLines= 2;
            
            // call into view 
            [self.view addSubview:videoLabel];
            
            // create label for calc and string concat
            videoTimeEstimation = [[UILabel alloc]initWithFrame:CGRectMake(0.0, 50.0f, 320, 40)];
            if (videoTimeEstimation != nil) {
                videoTimeEstimation.backgroundColor =[UIColor colorWithRed:0.992 green:0.729 blue:0.11 alpha:1]; /*#fdba1c*/
                videoTimeEstimation.text = [NSString stringWithFormat:@"This should take you a total of %d minutes to complete %@.",timeToCompleteVideos, weekOneVideos.assignmentName];
                videoTimeEstimation.numberOfLines = 2;
            }
             // call into view 
            [self.view addSubview:videoTimeEstimation];
        }
    }
    
    //*****Discussion*****
    
    // use AssignmentFactory to create video class
    Discussion * weekOneDiscussion = (Discussion *)[AssignmentFactory createNewAssignment:DISCUSSION];
    if (weekOneDiscussion != nil) {
        
        //set properties 
        [weekOneDiscussion setAssignmentName:@"Week 1 Discussion"];
        [weekOneDiscussion setNumberOfQuestions:3];
        [weekOneDiscussion setWordsReqPerAnswer:150];
        [weekOneDiscussion calcAssignmentTime];
        timeToCompleteDiscussion = [weekOneDiscussion assignmentTimeMinutes];
        
        // create string for label using property values 
        discussionString = [NSString stringWithFormat:@"You have %d discussion questions. You will need to write at least %d word for each.", weekOneDiscussion.numberOfQuestions, weekOneDiscussion.wordsReqPerAnswer ];
        
        //create label for string 
        discussionLabel = [[UILabel alloc]initWithFrame:CGRectMake(0.0f, 100.0f, 320, 40)];
        if (discussionLabel != nil) {
            discussionLabel.backgroundColor =[UIColor colorWithRed:0.992 green:0.729 blue:0.11 alpha:1]; /*#fdba1c*/
            discussionLabel.text = discussionString;
            discussionLabel.numberOfLines = 2;
        }
        
        //call into view 
        [self.view addSubview:discussionLabel];
        
        // create string for calc and string concat
        discussionTimeString = [NSString stringWithFormat:@"It should take you about %d minuntes to complete %@.", timeToCompleteDiscussion, weekOneDiscussion.assignmentName];
        
        // create label for calc and string concat
        discussionTimeLabel = [[UILabel alloc]initWithFrame:CGRectMake(0.0f, 150.0f, 320, 40)];
        if (discussionTimeLabel != nil) {
            discussionTimeLabel.backgroundColor= [UIColor colorWithRed:0.992 green:0.729 blue:0.11 alpha:1]; /*#fdba1c*/
            discussionTimeLabel.text = discussionTimeString;
            discussionTimeLabel.numberOfLines = 2;
        }
        
        // call into view 
        [self.view addSubview:discussionTimeLabel];
        
    }
    
    //*****Project*****
    Project * weekOneProject =(Project *)[AssignmentFactory createNewAssignment:PROJECT];
    if (weekOneProject != nil) {
        [weekOneProject setAssignmentName:@"Week 1 Project"];
        [weekOneProject setTimeForResearch:120];
        [weekOneProject setPrepAndDelivery:30];
        [weekOneProject setWorkTime:120];
        [weekOneProject calcAssignmentTime];
        
        timeToCompleteProject = [weekOneProject assignmentTimeMinutes];
        
        projectString = [NSString stringWithFormat:@"Your %@ will take a total of %d minutes to complete.", weekOneProject.assignmentName, timeToCompleteProject];
        
        //create label using string with calc and concat
        projectLabel = [[UILabel alloc]initWithFrame:CGRectMake(0.0f, 200.0f, 320, 40)];
        if (projectLabel) {
            projectLabel.backgroundColor = [UIColor colorWithRed:0.992 green:0.729 blue:0.11 alpha:1]; /*#fdba1c*/
            projectLabel.text = projectString;
            projectLabel.numberOfLines = 2;
        }
        
        // call into view 
        [self.view addSubview:projectLabel];
        
        // create string for calc and string concat
        projectDetailLabelString = [NSString stringWithFormat:@"It wilk take %d minuted for Reseach, %d for Prep and Delivery and %d minutes of Work.", weekOneProject.timeForResearch, weekOneProject.prepAndDelivery, weekOneProject.workTime];
        
        // create label for calc and string concat
        projectDetailLabel = [[UILabel alloc]initWithFrame:CGRectMake(0.0f, 250.0f, 320, 60)];
        if (projectDetailLabel!= nil) {
            projectDetailLabel.backgroundColor = [UIColor colorWithRed:0.992 green:0.729 blue:0.11 alpha:1]; /*#fdba1c*/
            projectDetailLabel.text = projectDetailLabelString;
            projectDetailLabel.numberOfLines =3;
        }
        
    }
    
    //call into view 
    [self.view addSubview:projectDetailLabel];



[super viewDidLoad];
// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
