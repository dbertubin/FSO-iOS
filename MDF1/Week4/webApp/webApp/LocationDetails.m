//
//  LocationDetails.m
//  webApp
//
//  Created by Derek Bertubin on 12/12/12.
//  Copyright (c) 2012 Derek Bertubin. All rights reserved.
//

#import "LocationDetails.h"

@implementation LocationDetails

@synthesize name,obTime,temp,weather;

-(id)initWithName:(NSString*)locationName obTime:(NSString*)observationTime temp:(NSString*)tempString weather:(NSString*)weatherString
{
    if ((self = [super init]))
    {
        name = locationName;
        obTime = observationTime;
        temp = tempString;
        weather = weatherString;
        
    }
    
    return self;
}


@end
