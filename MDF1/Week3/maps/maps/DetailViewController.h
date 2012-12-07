//
//  DetailViewController.h
//  maps
//
//  Created by Derek Bertubin on 12/5/12.
//  Copyright (c) 2012 Derek Bertubin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "MapLocationAnnotation.h"

@interface DetailViewController : UIViewController


# pragma mark -IBOutlets
@property (weak, nonatomic) IBOutlet MKMapView *mapView;
@property (weak, nonatomic) IBOutlet UILabel *placeTitleLabel;
@property (weak, nonatomic) IBOutlet UILabel *placeLocationCoords;


#pragma mark -Properties
@property NSString * placeString;
@property NSString * locationString;
@property float latValue;
@property float longValue;
@property MapLocationAnnotation * annotation;



@end
