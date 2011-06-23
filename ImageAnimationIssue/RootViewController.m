//
//  RootViewController.m
//  ImageAnimationIssue
//
//  Created by Sound Blaster on 23.06.11.
//  Copyright 2011 PetrSU. All rights reserved.
//

#import "RootViewController.h"

@implementation RootViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    animImage.animationImages = [NSArray arrayWithObjects:
                                 [UIImage imageNamed:@"1.png"],
                                 [UIImage imageNamed:@"2.png"],
                                 [UIImage imageNamed:@"3.png"],
                                 [UIImage imageNamed:@"4.png"],                                 
                                 [UIImage imageNamed:@"3.png"],
                                 [UIImage imageNamed:@"2.png"],
                                 nil];
    animImage.animationDuration = 0.5;
    animImage.animationRepeatCount = 0;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    NSLog(@"First view - viewDidAppear");
    [super viewDidAppear:animated];
    [animImage startAnimating];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
    NSLog(@"First view - viewDidDisappear");
	[super viewDidDisappear:animated];
    [animImage stopAnimating];    
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Relinquish ownership any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload
{
    [super viewDidUnload];

    // Relinquish ownership of anything that can be recreated in viewDidLoad or on demand.
    // For example: self.myOutlet = nil;
}

- (void)dealloc
{
    [animImage release];
    [super dealloc];
}

// ========================== Developer's methods ======================

@end
