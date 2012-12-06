//
//  FirstViewController.h
//  maps
//
//  Created by Derek Bertubin on 12/2/12.
//  Copyright (c) 2012 Derek Bertubin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MapInfoData.h"
#import "AppDelegate.h"
#import <MapKit/MapKit.h>
#import "DetailViewController.h"
@class MapInfoData;

@interface FirstViewController : UIViewController 
{
//    MapInfoData * mapInfoData;
    AppDelegate * DataDelegate;
    NSMutableArray * bizTitle;
    NSMutableArray * placeDetails;
    
    
    MapLocationAnnotation * selectedAnnotation;
    DetailViewController * showLocation;
    
    BOOL isInEditMode;
}

@property (weak, nonatomic) IBOutlet UITableView *bizTableView;
@property (strong, nonatomic) IBOutlet UIBarButtonItem *editButton;

-(IBAction)onClick:(id)sender;
@end
