//
//  MapInfoData.h
//  maps
//
//  Created by Derek Bertubin on 12/5/12.
//  Copyright (c) 2012 Derek Bertubin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MapLocationAnnotation.h"

@interface MapInfoData : UIViewController

@property NSMutableArray * placesArray;
@property NSMutableArray * bizLocation;

@property MapLocationAnnotation * annotation1;
@property MapLocationAnnotation * annotation2;
@property MapLocationAnnotation * annotation3;
@property MapLocationAnnotation * annotation4;
@property MapLocationAnnotation * annotation5;
@property MapLocationAnnotation * annotation6;
@property MapLocationAnnotation * annotation7;
@property MapLocationAnnotation * annotation8;
@property MapLocationAnnotation * annotation9;
@property MapLocationAnnotation * annotation10;

-(NSMutableArray*)getPlaceInfo;




@end
