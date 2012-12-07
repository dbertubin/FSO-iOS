//
//  MapLocationAnnotation.h
//  maps
//
//  Created by Derek Bertubin on 12/5/12.
//  Copyright (c) 2012 Derek Bertubin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface MapLocationAnnotation : NSObject <MKAnnotation>

@property NSString * title;
@property NSString * subtitle;

@property CLLocationCoordinate2D coordinate;


- (id)initWithTitle:(NSString *)text subtitle:(NSString *)subtext coord:(CLLocationCoordinate2D)coord;


@end
