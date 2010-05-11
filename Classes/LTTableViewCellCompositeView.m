//
//  LTTableViewCellCompositeView.m
//  LTKit
//
//  Created by Michael Potter on 5/10/10.
//  Copyright 2010 LucasTizma. All rights reserved.
//

#import "LTKit/LTTableViewCellCompositeView.h"
#import "LTKit/LTTableViewCell.h"
#import "LTKit/NSObject+LTAdditions.h"

@implementation LTTableViewCellCompositeView

@synthesize tableViewCell = tableViewCell_;

#pragma mark -
#pragma mark LTTableViewCellContentView Methods

- (id)initWithFrame:(CGRect)frame tableViewCell:(LTTableViewCell *)tableViewCell
{
	self = [self initWithFrame:frame];

	if (self != nil) {
		self.tableViewCell = tableViewCell;
		self.backgroundColor = self.tableViewCell.backgroundColor;
	}

	return self;
}

#pragma mark -
#pragma mark UIView Methods

- (id)initWithFrame:(CGRect)frame
{
	self = [super initWithFrame:frame];

	if (self != nil) {
		self.tableViewCell = nil;
		self.opaque = YES;
	}

	return self;
}

- (void)drawRect:(CGRect)rect
{
	NSArray * propertyNames = [[self.tableViewCell class] propertyNames];

	for (NSString * propertyName in propertyNames)
	{
		id property = [self.tableViewCell valueForKey:propertyName];

		if ([property isKindOfClass:[UILabel class]])
		{
			UILabel * label = (UILabel *)property;
			[label.textColor set];
			[label.text drawInRect:label.frame withFont:label.font lineBreakMode:label.lineBreakMode alignment:label.textAlignment];
		}
		else if ([property isKindOfClass:[UIImageView class]])
		{
			UIImageView * imageView = (UIImageView *)property;
			[imageView.image drawInRect:imageView.frame];
		}
	}
}

#pragma mark -
#pragma mark NSObject Methods

- (id)init
{
	return [self initWithFrame:CGRectZero];
}

- (void)dealloc
{
	[tableViewCell_ release];

	tableViewCell_ = nil;

	[super dealloc];
}

@end