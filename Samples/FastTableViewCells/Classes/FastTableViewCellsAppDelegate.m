//
//  FastTableViewCellsAppDelegate.m
//  FastTableViewCells
//
//  Created by Michael Potter on 5/10/2010.
//  Copyright LucasTizma 2010. All rights reserved.
//

#import "FastTableViewCellsAppDelegate.h"
#import "RootViewController.h"

@implementation FastTableViewCellsAppDelegate

@synthesize window = window_;
@synthesize navigationController = navigationController_;

#pragma mark -
#pragma mark UIApplicationDelegate Methods

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
	self.window = [[[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds] autorelease];
	self.navigationController = [[[UINavigationController alloc] initWithRootViewController:[[[RootViewController alloc] initWithStyle:UITableViewStylePlain] autorelease]] autorelease];
    [self.window addSubview:self.navigationController.view];
    [self.window makeKeyAndVisible];

    return YES;
}

#pragma mark -
#pragma mark NSObject Methods

- (void)dealloc
{
	[window_ release];
	[navigationController_ release];

	window_ = nil;
	navigationController_ = nil;

	[super dealloc];
}

@end