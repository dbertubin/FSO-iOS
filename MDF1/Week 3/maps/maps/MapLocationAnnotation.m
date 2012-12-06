//
//  MapLocationAnnotation.m
//  maps
//
//  Created by Derek Bertubin on 12/5/12.
//  Copyright (c) 2012 Derek Bertubin. All rights reserved.
//

#import "MapLocationAnnotation.h"

@implementation MapLocationAnnotation

@synthesize title,subtitle, coordinate;

- (id)initWithTitle:(NSString *)text subtitle:(NSString *)subtext coord:(CLLocationCoordinate2D)coord
{
    if (self = [super init])
    {
        title = text;
        subtitle = subtext;
        coordinate = coord;
    }
    return self;
}


@end
