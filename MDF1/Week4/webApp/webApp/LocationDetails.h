//
//  LocationDetails.h
//  webApp
//
//  Created by Derek Bertubin on 12/12/12.
//  Copyright (c) 2012 Derek Bertubin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LocationDetails : NSObject

@property NSString * name;
@property NSString * obTime;
@property NSString * temp;
@property NSString * weather;

-(id)initWithName:(NSString*)locationName obTime:(NSString*)observationTime temp:(NSString*)tempString weather:(NSString*)weather;

@end
