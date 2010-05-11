//
//  FastTableViewCellsAppDelegate.h
//  FastTableViewCells
//
//  Created by Michael Potter on 5/10/2010.
//  Copyright LucasTizma 2010. All rights reserved.
//

@interface FastTableViewCellsAppDelegate : NSObject <UIApplicationDelegate>
{
    UIWindow * window_;
    UINavigationController * navigationController_;
}

@property (nonatomic, retain) UIWindow * window;
@property (nonatomic, retain) UINavigationController * navigationController;

@end