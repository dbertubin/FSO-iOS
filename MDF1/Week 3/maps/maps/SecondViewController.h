//
//  SecondViewController.h
//  maps
//
//  Created by Derek Bertubin on 12/2/12.
//  Copyright (c) 2012 Derek Bertubin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "MapLocationAnnotation.h"
#import <MapKit/MapKit.h>

@interface SecondViewController : UIViewController
{
    AppDelegate * DataDelegate;
    MapLocationAnnotation *annotation;
}

@property NSString * placeString;
@property NSString * locationString;
@property NSMutableArray * annotationArray;

@property IBOutlet   UINavigationBar * navBar;
@property (weak, nonatomic) IBOutlet MKMapView *mapViewAll;

-(void)zoomLocation;

@end
