//
//  TableViewCell.m
//  FastTableViewCells
//
//  Created by Michael Potter on 5/10/2010.
//  Copyright 2010 LucasTizma. All rights reserved.
//

#import "TableViewCell.h"

@implementation TableViewCell

@synthesize imageView = imageView_;
@synthesize firstLabel = firstLabel_;
@synthesize secondLabel = secondLabel_;
@synthesize thirdLabel = thirdLabel_;

#pragma mark -
#pragma mark NSObject Methods

- (id)init
{
	self = [super init];

	if (self != nil)
	{
		self.imageView = nil;
		self.firstLabel = nil;
		self.secondLabel = nil;
		self.thirdLabel = nil;
	}

	return self;
}

- (void)dealloc
{
	[imageView_ release];
	[firstLabel_ release];
	[secondLabel_ release];
	[thirdLabel_ release];

	imageView_ = nil;
	firstLabel_ = nil;
	secondLabel_ = nil;
	thirdLabel_ = nil;

    [super dealloc];
}

@end