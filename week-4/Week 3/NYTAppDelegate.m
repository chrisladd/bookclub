//
//  NYTAppDelegate.m
//  Week 3
//
//  Created by Christopher Ladd on 3/13/14.
//  Copyright (c) 2014 NYTimes. All rights reserved.
//

#import "NYTAppDelegate.h"
#import "NYTViewController.h"

@implementation NYTAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];

    NYTViewController *viewController = [[NYTViewController alloc] init];

    NSLog(@"%@", viewController);
    NSLog(@"%@", self.window.rootViewController);
    NSLog(@"%@", [[self window] rootViewController]);

//    self.window.rootViewController = viewController;
    [[self window] setRootViewController:viewController]; // identical

    NSLog(@"%@", viewController);
    NSLog(@"%@", self.window.rootViewController);
    NSLog(@"%@", [[self window] rootViewController]);

    [viewController makeViewPurple];

    [self.window makeKeyAndVisible];

    return YES;
}


@end
