//
//  IrregularTabbarControllerAppDelegate.m
//  Tabbar
//
//  Created by Chen Yang on 12-8-27.
//  Copyright (c) 2012年 taobao. All rights reserved.
//

#import "IrregularTabbarControllerAppDelegate.h"

#import "IrregularTabbarControllerFirstViewController.h"

#import "IrregularTabbarControllerSecondViewController.h"

#import "IrregularTabbarController.h"

@implementation IrregularTabbarControllerAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    
    UIViewController *viewController1 = [[IrregularTabbarControllerFirstViewController alloc] initWithNibName:@"IrregularTabbarControllerFirstViewController" bundle:nil];
    UINavigationController  *nav1 = [[UINavigationController alloc] initWithRootViewController:viewController1];
    
    
    UIViewController *viewController2 = [[IrregularTabbarControllerSecondViewController alloc] initWithNibName:@"IrregularTabbarControllerSecondViewController" bundle:nil];
    UIViewController *viewController3 = [[IrregularTabbarControllerSecondViewController alloc] initWithNibName:@"IrregularTabbarControllerSecondViewController" bundle:nil];
    UIViewController *viewController4 = [[IrregularTabbarControllerSecondViewController alloc] initWithNibName:@"IrregularTabbarControllerSecondViewController" bundle:nil];
    UIViewController *viewController5 = [[IrregularTabbarControllerSecondViewController alloc] initWithNibName:@"IrregularTabbarControllerSecondViewController" bundle:nil];
    
    self.tabBarController = [[IrregularTabbarController alloc] init];
    self.tabBarController.viewControllers = @[nav1, viewController2, viewController3, viewController4, viewController5];
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
