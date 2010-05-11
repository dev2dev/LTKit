//
//  TableCell.m
//  FastTableViewCells
//
//  Created by Michael Potter on 5/10/2010.
//  Copyright 2010 LucasTizma. All rights reserved.
//

#import "TableCell.h"

@implementation TableCell

@synthesize imageView = imageView_;
@synthesize firstLabel = firstLabel_;
@synthesize secondLabel = secondLabel_;
@synthesize thirdLabel = thirdLabel_;
//@synthesize imageName = imageName_;
//@synthesize firstLabelText = firstLabelText_;
//@synthesize secondLabelText = secondLabelText_;
//@synthesize thirdLabelText = thirdLabelText_;

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
//		self.imageName = nil;
//		self.firstLabelText = nil;
//		self.secondLabelText = nil;
//		self.thirdLabelText = nil;
	}

	return self;
}

- (void)dealloc
{
	[imageView_ release];
	[firstLabel_ release];
	[secondLabel_ release];
	[thirdLabel_ release];
//	[imageName_ release];
//	[firstLabelText_ release];
//	[secondLabelText_ release];
//	[thirdLabelText_ release];

	imageView_ = nil;
	firstLabel_ = nil;
	secondLabel_ = nil;
	thirdLabel_ = nil;
//	imageName_ = nil;
//	firstLabelText_ = nil;
//	secondLabelText_ = nil;
//	thirdLabelText_ = nil;

    [super dealloc];
}

@end