//
//  LTTableViewCell.m
//  LTKit
//
//  Created by Michael Potter on 5/10/2010.
//  Copyright 2010 LucasTizma. All rights reserved.
//

#import "LTKit/LTTableViewCell.h"
#import "LTKit/LTTableViewCellCompositeView.h"

@implementation LTTableViewCell

#pragma mark -
#pragma mark LTTableViewCell Methods

- (void)drawCompositeView
{
	LTTableViewCellCompositeView * compositeView = [[[LTTableViewCellCompositeView alloc] initWithFrame:self.contentView.bounds tableViewCell:self] autorelease];
	compositeView.autoresizingMask = UIViewAutoresizingFlexibleWidth;
	compositeView.contentMode = UIViewContentModeRedraw;

	for (UIView * subview in self.contentView.subviews)
	{
		if ([subview isKindOfClass:[LTTableViewCellCompositeView class]]) {
			[subview removeFromSuperview];
		}
		else
		{
			subview.hidden = YES;
		}
	}

	[self.contentView addSubview:compositeView];
}

@end