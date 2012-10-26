
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
    
    Video * weekOneVideos = (Video *)[AssignmentFactory createNewAssignment:VIDEO];
    if (weekOneVideos !=nil)
    {
        [weekOneVideos setAssignmentName:@"Week 1 Videos"];
        [weekOneVideos setNumberOfVideos:6];
        [weekOneVideos calcAssignmentTime];
        timeToCompleteVideos = [weekOneVideos assignmentTimeMinutes];
        
        videoString = [NSString stringWithFormat:@"There are %d videos to watch; each one should take %d minutes to complete.", weekOneVideos.numberOfVideos, weekOneVideos.timePerVideo];
        
        
        videoLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 320.0f, 40.0f)];
        if (videoLabel != nil) {
            videoLabel.backgroundColor= [UIColor colorWithRed:0.992 green:0.729 blue:0.11 alpha:1]; /*#fdba1c*/
            videoLabel.text = videoString;
            videoLabel.numberOfLines= 2;
            
            [self.view addSubview:videoLabel];
            
            videoTimeEstimation = [[UILabel alloc]initWithFrame:CGRectMake(0.0, 50.0f, 320, 40)];
            videoTimeEstimation.backgroundColor =[UIColor colorWithRed:0.992 green:0.729 blue:0.11 alpha:1]; /*#fdba1c*/
            videoTimeEstimation.text = [NSString stringWithFormat:@"This should take you a total of %d minutes to complete %@.",timeToCompleteVideos, weekOneVideos.assignmentName];
            videoTimeEstimation.numberOfLines = 2;
            [self.view addSubview:videoTimeEstimation];
        }
    }
    
    //*****Discussion*****
    
    Discussion * weekOneDiscussion = (Discussion *)[AssignmentFactory createNewAssignment:DISCUSSION];
    if (weekOneDiscussion != nil) {
        
        [weekOneDiscussion setAssignmentName:@"Week 1 Discussion"];
        [weekOneDiscussion setNumberOfQuestions:3];
        [weekOneDiscussion setWordsReqPerAnswer:150];
        [weekOneDiscussion calcAssignmentTime];
        timeToCompleteDiscussion = [weekOneDiscussion assignmentTimeMinutes];
        
        discussionString = [NSString stringWithFormat:@"You have %d discussion questions. You will need to write at least %d word for each.", weekOneDiscussion.numberOfQuestions, weekOneDiscussion.wordsReqPerAnswer ];
        
        discussionLabel = [[UILabel alloc]initWithFrame:CGRectMake(0.0f, 100.0f, 320, 40)];
        discussionLabel.backgroundColor =[UIColor colorWithRed:0.992 green:0.729 blue:0.11 alpha:1]; /*#fdba1c*/
        discussionLabel.text = discussionString;
        discussionLabel.numberOfLines = 2;
        
        [self.view addSubview:discussionLabel];
        
        discussionTimeString = [NSString stringWithFormat:@"It should take you about %d minuntes to complete %@.", timeToCompleteDiscussion, weekOneDiscussion.assignmentName];
        
        
        discussionTimeLabel = [[UILabel alloc]initWithFrame:CGRectMake(0.0f, 150.0f, 320, 40)];
        discussionTimeLabel.backgroundColor= [UIColor colorWithRed:0.992 green:0.729 blue:0.11 alpha:1]; /*#fdba1c*/
        discussionTimeLabel.text = discussionTimeString;
        discussionTimeLabel.numberOfLines = 2;
        
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
        
        projectLabel = [[UILabel alloc]initWithFrame:CGRectMake(0.0f, 200.0f, 320, 40)];
        projectLabel.backgroundColor = [UIColor colorWithRed:0.992 green:0.729 blue:0.11 alpha:1]; /*#fdba1c*/
        projectLabel.text = projectString;
        projectLabel.numberOfLines = 2;
        
        [self.view addSubview:projectLabel];
        
        projectDetailLabelString = [NSString stringWithFormat:@"It wilk take %d minuted for Reseach, %d for Prep and Delivery and %d minutes of Work.", weekOneProject.timeForResearch, weekOneProject.prepAndDelivery, weekOneProject.workTime];
        
        projectDetailLabel = [[UILabel alloc]initWithFrame:CGRectMake(0.0f, 250.0f, 320, 60)];
        projectDetailLabel.backgroundColor = [UIColor colorWithRed:0.992 green:0.729 blue:0.11 alpha:1]; /*#fdba1c*/
        projectDetailLabel.text = projectDetailLabelString;
        projectDetailLabel.numberOfLines =3;
        
        [self.view addSubview:projectDetailLabel];
                                                                
        
        
        
    }
    
    
    //  Instructions
    
    // One base class that is a generic version of some kind of noun or item. ********* Done
    
    // Three subclasses that are more specific versions of the noun or item in the base class. ********* Done
    
    // One factory that can generate objects for the three subclasses depending on which is requested. ******* Working
    
    
    // ***********The Object Model********************
    
    
    // At least one numeric data member in the base class. ********* Done
    
    // At least one string data member in the base class.  *********** Done
    
    // Accessor and mutator methods in the base class to get and set the values of the data members. These methods must not be overridden in the subclasses. ****** Done
    
    // A method in the base class that performs some kind of calculation or manipulation based on at least one argument and at least one data member, returning some kind of result. ***** Working
    
    // Overridden versions of the previous method in the subclasses. Each class must do something slightly different, such as altering the method of calculation, to show how functionality can change in  subclasses. Found in INHERITANCE VIDEO and OVERRIDEMETHOD VIDEO menu  ********* Working
    
    // At least one additional data member (of any type) and associated accessor and mutator methods in each of the subclasses. This data member should make sense as being unique to the specific subclass. ***** Working
    
    // The factory should include a class (aka static) method to instantiate and return objects of the subclasses, given an argument that specifies which type.  Refer to STATIC VIDEO ****** Done
    
    // Your classes should represent any noun or item of your choosing as long as you don't recreate any examples given in the course material.  ****** Done
    
    // *************Visual Features****************
    
    // Your app should use the factory to instantiate one of each of the three subclasses and add their string and numeric member values to three labels placed on the primary view. When adding the values to the labels, be sure to use the accessor methods privided by the base class to get the members, and do not just hard-code the values in the labels. For example:
    
    //       turkeylabel.text = [NSString stringWithFormat:@"The %@ are combined and you must %@.", [thanksgivingMeal ingredients], [thanksgivingMeal instructions]];
    
    // Your app should also call the custom mutator method (such as setPounds on the turkey recipe class) to set the unique data member for each class, and then use the corresponding accessor to show the value in another set of labels:
    
    //  turkeycustom.text = [NSString stringWithFormat:@"The %d pound turkey needs to cook %d minutes.", [thanksgivingMeal pounds], [thanksgivingMeal calculateCookingTimeMinutes]];
    
    // This will give your screen a total of 6 labels.
    
    
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
