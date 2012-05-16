//
//  AppDelegate.m
//  NavigationBarWithShadowDemo
//
//  Created by Derek Yang on 5/16/12.
//  Copyright (c) 2012 Derek Yang. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

@synthesize window = _window;

- (id)customControllerWithRootViewController:(UIViewController *)root {
    UINavigationController *nav = [[[NSBundle mainBundle] loadNibNamed:@"NavigationController" owner:self options:nil] objectAtIndex:0];
    [nav setViewControllers:[NSArray arrayWithObject:root]];
    return nav;
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    UIViewController *mainViewController = [[UIViewController alloc] init];
    mainViewController.view.backgroundColor = [UIColor whiteColor];
    mainViewController.title = @"Title";
    UINavigationController *navigationController = [self customControllerWithRootViewController:mainViewController];
    self.window.rootViewController = navigationController;
    [self.window makeKeyAndVisible];
    return YES;
}

@end
