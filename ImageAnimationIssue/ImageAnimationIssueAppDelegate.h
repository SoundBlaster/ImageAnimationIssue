//
//  ImageAnimationIssueAppDelegate.h
//  ImageAnimationIssue
//
//  Created by Sound Blaster on 23.06.11.
//  Copyright 2011 PetrSU. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ImageAnimationIssueAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet UINavigationController *navigationController;
@property (nonatomic, retain) IBOutlet UINavigationItem *navigationItem;

-(IBAction)pushPage;
-(void)backPage;

@end
