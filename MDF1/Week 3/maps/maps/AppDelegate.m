//
//  AppDelegate.m
//  maps
//
//  Created by Derek Bertubin on 12/2/12.
//  Copyright (c) 2012 Derek Bertubin. All rights reserved.
//

#import "AppDelegate.h"

#import "FirstViewController.h"

#import "SecondViewController.h"

@implementation AppDelegate

@synthesize navController;

@synthesize annotation1,annotation2,annotation3,annotation4,annotation5,annotation6,annotation7,
annotation8,annotation9,annotation10;

@synthesize annoList;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    
    // Location Coordinates
    CLLocationCoordinate2D bogota;
    bogota.latitude = 4.598056f;
    bogota.longitude = -74.075833f;
    
    CLLocationCoordinate2D pereria;
    pereria.latitude = 4.784469f;
    pereria.longitude = -75.717773f;
    
    CLLocationCoordinate2D santaRosa;
    santaRosa.latitude =1.733333f;
    santaRosa.longitude = -76.566667f;
    
    CLLocationCoordinate2D ologapo;
    ologapo.latitude =14.876198f;
    ologapo.longitude = 120.278320f;
    
    CLLocationCoordinate2D manila;
    manila.latitude = 14.583583f;
    manila.longitude = 120.997925f;
    
    CLLocationCoordinate2D bagio;
    bagio.latitude = 16.40447f;
    bagio.longitude = 120.596007f;
    
    CLLocationCoordinate2D london;
    london.latitude = 51.508742f;
    london.longitude = 0.0f;
    
    CLLocationCoordinate2D paris;
    paris.latitude =48.856614f;
    paris.longitude = 2.352222;
    
    CLLocationCoordinate2D atacamaDesert;
    atacamaDesert.latitude = -23.369544f;
    atacamaDesert.longitude = -69.859741f;
    
    CLLocationCoordinate2D rioDeJaneiro;
    rioDeJaneiro.latitude = -22.917923f;
    rioDeJaneiro.longitude = -43.220215f;
    
    // annotation info
    annotation1 = [[MapLocationAnnotation alloc]init];
    annotation1.title = @"Places To Go";
    annotation1.subtitle  = @"Bogota, Colombia";
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
    
    // annotation list 
    annoList = [[NSMutableArray alloc] initWithObjects:
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
    
    
    sleep(2);
    
    
    
    UIViewController *viewController1 = [[FirstViewController alloc] initWithNibName:@"FirstViewController" bundle:nil];
    
    
    navController = [[UINavigationController alloc] initWithRootViewController:viewController1];

    
    
    UIViewController *viewController2 = [[SecondViewController alloc] initWithNibName:@"SecondViewController" bundle:nil];
    self.tabBarController = [[UITabBarController alloc] init];
    self.tabBarController.viewControllers = @[navController, viewController2];
    self.tabBarController.tabBar.tintColor = [UIColor colorWithRed:1 green:0.749 blue:0.000 alpha:1] /*#ffbf40*/;
    self.tabBarController.tabBar.selectedImageTintColor =[UIColor colorWithRed:1 green:1 blue:1 alpha:1] /*#ffffff*/;
    
    self.window.rootViewController = self.tabBarController;
    [self.window makeKeyAndVisible];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

                  
                  
/*
 // Optional UITabBarControllerDelegate method.
 - (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController
 {
 }
 */

/*
 // Optional UITabBarControllerDelegate method.
 - (void)tabBarController:(UITabBarController *)tabBarController didEndCustomizingViewControllers:(NSArray *)viewControllers changed:(BOOL)changed
 {
 }
 */

@end
