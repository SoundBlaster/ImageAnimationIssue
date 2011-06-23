//
//  ImageAnimationIssueAppDelegate.m
//  ImageAnimationIssue
//
//  Created by Sound Blaster on 23.06.11.
//  Copyright 2011 PetrSU. All rights reserved.
//

#import "ImageAnimationIssueAppDelegate.h"
#import "SecondViewController.h"

@implementation ImageAnimationIssueAppDelegate


@synthesize window=_window;

@synthesize navigationController=_navigationController;
@synthesize navigationItem=_navigationItem;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    // Add the navigation controller's view to the window and display.
    self.window.rootViewController = self.navigationController;
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
     */
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    /*
     Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
     */
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    /*
     Called when the application is about to terminate.
     Save data if appropriate.
     See also applicationDidEnterBackground:.
     */
}

- (void)dealloc
{
    [_window release];
    [_navigationController release];
    [_navigationItem release];
    [super dealloc];
}

-(IBAction)pushPage
{
    NSLog(@"push page");

    SecondViewController *secondView = [[SecondViewController alloc] initWithNibName:@"SecondViewController" bundle:nil];
    
    [UIView beginAnimations:@"animation" context:nil];
    [UIView setAnimationDuration:0.75];
    [UIView setAnimationTransition:UIViewAnimationTransitionCurlUp forView:self.navigationController.view cache:NO];
    [self.navigationController pushViewController:secondView animated:NO];
    [UIView commitAnimations];  
    
    [secondView release];
}

-(void)backPage
{
    NSLog(@"backPage");
    [UIView beginAnimations:@"animation" context:nil];
    [UIView setAnimationDuration:0.75];
    [UIView setAnimationTransition:UIViewAnimationTransitionCurlDown forView:self.navigationController.view cache:NO];
    [self.navigationController popToRootViewControllerAnimated:NO];
    [UIView commitAnimations]; 
}

@end
