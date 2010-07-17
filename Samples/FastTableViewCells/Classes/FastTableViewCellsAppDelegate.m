//
//  Copyright 2010 Michael Shannon Potter
//
//  LucasTizma
//  www.lucastizma.com
//  lucastizma@lucastizma.com (E-mail/AIM)
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
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
	self.navigationController = [[[UINavigationController alloc] initWithRootViewController:[[[RootViewController alloc]
        initWithStyle:UITableViewStylePlain] autorelease]] autorelease];
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