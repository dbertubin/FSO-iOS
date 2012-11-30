//
//  AppDelegate.m
//  planner
//
//  Created by Derek Bertubin on 11/4/12.
//  Copyright (c) 2012 Derek Bertubin. All rights reserved.
//

#import "AppDelegate.h"

#import "ViewController.h"
#import "FlowChartViewController.h"
#import "AddEventScreen.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    sleep(2);
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    // child view 
    UIViewController *viewController = [[ViewController alloc] initWithNibName:@"ViewController" bundle:nil];
    
    // creation of parent nav Controller 
    UINavigationController * navController = [[UINavigationController alloc] initWithRootViewController:viewController];
    
    
    UIViewController *addEventScreen = [[AddEventScreen alloc] initWithNibName:@"AddEventScreen" bundle:nil];
    UIViewController *flowChartViewController = [[FlowChartViewController alloc] initWithNibName:@"FlowChartViewController" bundle:nil];
    

    self.tabBarController = [[UITabBarController alloc] init];
    self.tabBarController.viewControllers = @[navController, addEventScreen, flowChartViewController];
    self.tabBarController.tabBar.tintColor = [UIColor colorWithRed:1 green:0.749 blue:0.000 alpha:1] /*#ffbf40*/;
    self.tabBarController.tabBar.selectedImageTintColor =[UIColor colorWithRed:1 green:1 blue:1 alpha:1] /*#ffffff*/;
    self.window.rootViewController = self.tabBarController;
    [self.window makeKeyAndVisible];
    return YES;
    
//ViewController * viewController = [[ViewController alloc]initWithNibName:@"ViewController" bundle:nil];
    
    

    
    self.window.rootViewController = navController;
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

@end
