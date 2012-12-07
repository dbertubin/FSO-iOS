//
//  DetailViewController.m
//  maps
//
//  Created by Derek Bertubin on 12/5/12.
//  Copyright (c) 2012 Derek Bertubin. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

@synthesize mapView;
@synthesize placeString;
@synthesize locationString;
@synthesize longValue,latValue;
@synthesize annotation;
@synthesize placeTitleLabel;
@synthesize placeLocationCoords;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
#pragma mark -Set Map View
    MKCoordinateSpan span;
    span.latitudeDelta = 1.5f;
    span.longitudeDelta = 1.5f;
    
    // Set location for map
    CLLocationCoordinate2D location;
    location.latitude = latValue;
    location.longitude = longValue;
    
    MKCoordinateRegion mapRegion;
    mapRegion.center = location;
    mapRegion.span = span;
    
    [mapView setRegion:mapRegion animated:YES];
    annotation = [[MapLocationAnnotation alloc] initWithTitle:placeString subtitle:locationString coord:location];
    
    if (annotation != nil) {
        [mapView addAnnotation:annotation];
    }

    placeTitleLabel.text = placeString;
    placeLocationCoords.text = [NSString stringWithFormat:@"Location Coordinates: Lat. %f, Long.%f", latValue, latValue];

}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


    
    


@end
