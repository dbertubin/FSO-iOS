//
//  MapInfoData.m
//  maps
//
//  Created by Derek Bertubin on 12/5/12.
//  Copyright (c) 2012 Derek Bertubin. All rights reserved.
//

#import "FirstViewController.h"
#import "MapInfoData.h"
#import <MapKit/MapKit.h>

@interface MapInfoData ()

@end


@implementation MapInfoData

@synthesize placesArray;


@synthesize annotation1,annotation2,annotation3,annotation4,annotation5,annotation6, annotation7,annotation8,annotation9,annotation10;

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
    
    // Location Coordinates
    CLLocationCoordinate2D bogota;
    bogota.latitude = 4.609278f;
    bogota.longitude = 74.069824f;
    
    CLLocationCoordinate2D pereria;
    pereria.latitude = 4.784469f;
    pereria.longitude = -75.717773f;
    
    CLLocationCoordinate2D santaRosa;
    santaRosa.latitude =1.733333f;
    santaRosa.longitude = -76.566667f;
    
    CLLocationCoordinate2D ologapo;
    ologapo.latitude = 14.902322f;
    ologapo.longitude = -120.278320f;
    
    CLLocationCoordinate2D manila;
    manila.latitude = 14.583583f;
    manila.longitude = -120.997925f;
    
    CLLocationCoordinate2D bagio;
    bagio.latitude = 16.40447f;
    bagio.longitude = -120.596007f;
    
    CLLocationCoordinate2D london;
    london.latitude = 51.508742f;
    london.longitude = -0.0f;
    
    CLLocationCoordinate2D paris;
    paris.latitude = 48.922499f;
    paris.longitude = -2.460938f;
    
    CLLocationCoordinate2D atacamaDesert;
    atacamaDesert.latitude =-23.369544f;
    atacamaDesert.longitude = -69.859741f;
    
    CLLocationCoordinate2D rioDeJaneiro;
    rioDeJaneiro.latitude = -22.917923f;
    rioDeJaneiro.longitude = -43.220215f;
    
    
    
    
    // annotation info
    annotation1 = [[MapLocationAnnotation alloc]init];
    annotation1.title = @"Places To Go";
    annotation1.subtitle = @"Bogota, Colombia";
    annotation1.coordinate = bogota;
    
    annotation2 = [[MapLocationAnnotation alloc]init];
    annotation2.title = @"Places To Go";
    annotation2.subtitle = @"Pereria, Colombia";
    annotation2.coordinate = pereria;
    
    annotation3 = [[MapLocationAnnotation alloc]init];
    annotation3.title = @"Places To Go";
    annotation3.subtitle = @"Santa Rosa, Colombia";
    annotation3.coordinate = santaRosa;
    
    annotation4 = [[MapLocationAnnotation alloc]init];
    annotation4.title = @"Places To Go";
    annotation4.subtitle = @"Ologapo, Phillipines";
    annotation4.coordinate = ologapo;
    
    annotation5 = [[MapLocationAnnotation alloc]init];
    annotation5.title = @"Places To Go";
    annotation5.subtitle = @"Manila, Phillipines";
    annotation5.coordinate = manila;
    
    annotation6 = [[MapLocationAnnotation alloc]init];
    annotation6.title = @"Places To Go";
    annotation6.subtitle = @"Bagio City, Phillipines";
    annotation6.coordinate = bagio;
    
    annotation7 = [[MapLocationAnnotation alloc]init];
    annotation7.title = @"Places To Go";
    annotation7.subtitle = @"London, England";
    annotation7.coordinate = london;
    
    annotation8 = [[MapLocationAnnotation alloc]init];
    annotation8.title = @"Places To Go";
    annotation8.subtitle = @"Paris, France";
    annotation8.coordinate = paris;
    
    annotation9 = [[MapLocationAnnotation alloc]init];
    annotation9.title = @"Places To Go";
    annotation9.subtitle = @"Atacama Desert, Chile";
    annotation9.coordinate = atacamaDesert;
    
    annotation10 = [[MapLocationAnnotation alloc]init];
    annotation10.title = @"Places To Go";
    annotation10.subtitle = @"Rio de Janeira, Brazil";
    annotation10.coordinate = rioDeJaneiro;

    
    placesArray = [[NSMutableArray alloc] initWithObjects:
                   annotation1,
                   annotation2,
                   annotation3,
                   annotation4,
                   annotation5,
                   annotation6,
                   annotation7,
                   annotation8,
                   annotation9,
                   annotation10,
                   nil];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSMutableArray *)getPlaceInfo
{
    placesArray = [[NSMutableArray alloc] initWithObjects:
                   annotation1,
                   annotation2,
                   annotation3,
                   annotation4,
                   annotation5,
                   annotation6,
                   annotation7,
                   annotation8,
                   annotation9,
                   annotation10,
               nil];
    
    return placesArray;
}

@end
