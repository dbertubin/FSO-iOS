//
//  SecondViewController.m
//  maps
//
//  Created by Derek Bertubin on 12/2/12.
//  Copyright (c) 2012 Derek Bertubin. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

@synthesize navBar;
@synthesize placeString;
@synthesize locationString;
@synthesize mapViewAll;
@synthesize annotationArray;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"All Places", @"All Places");
        self.tabBarItem.image = [UIImage imageNamed:@"location"];

        navBar.tintColor = [UIColor colorWithRed:1 green:0.749 blue:0.000 alpha:1] /*#ffbf40*/;
    }
    return self;
}
							
- (void)viewDidLoad
{
    
    [super viewDidLoad];
	
    
    
}

-(void)viewDidAppear:(BOOL)animated
{
    
    
    [super viewDidAppear:YES];
    sleep(2);
    [self zoomLocation];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)zoomLocation
{
    
	// Do any additional setup after loading the view, typically from a nib.
    
    DataDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    annotationArray =[[NSMutableArray alloc]initWithArray:DataDelegate.annoList];
    

    
    
    
    
    // Set span and zoom level for map
    MKCoordinateSpan span;
    span.latitudeDelta = 180;
    span.longitudeDelta = 180;
    
    
    // Set location for map
    CLLocationCoordinate2D location;
    location.latitude = 50.0f;
    location.longitude = 0.0f;
    
    MKCoordinateRegion mapRegion = self.mapViewAll.region;
    mapRegion.center = location;
    mapRegion.span.longitudeDelta /= 1;
    mapRegion.span.latitudeDelta /= 1;
  //  mapRegion.span = span;
    
    
    [mapViewAll setRegion:mapRegion animated:YES];
    
    [mapViewAll removeAnnotations:mapViewAll.annotations];
    
    for (int x = 0; DataDelegate.annoList.count > x; x++)
    {
        annotation = [DataDelegate.annoList objectAtIndex:x];
        if (annotation != nil)
        {
            [mapViewAll addAnnotation:annotation];
        }
    }
    
    [mapViewAll addAnnotation:annotation];
    
    
}

@end

/*
Second Tab view
//The second tab view consists of a fullscreen map.
//The map will display a pin annotation for all of the business locations present in the tableview of the first tab. Hint: Keep track of the array of business locations in an object that is accessible to both tab views so the data is kept in sync.
//Clicking on a pin annotation will display the name of the business.
*/