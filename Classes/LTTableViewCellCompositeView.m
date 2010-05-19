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

#import "LTKit/LTTableViewCellCompositeView.h"
#import "LTKit/LTTableViewCell.h"
#import "LTKit/NSObject+LTAdditions.h"

@implementation LTTableViewCellCompositeView

@synthesize tableViewCell = tableViewCell_;

#pragma mark -
#pragma mark LTTableViewCellContentView Methods

- (id)initWithTableViewCell:(LTTableViewCell *)tableViewCell;
{
	self = [super initWithFrame:CGRectZero];

	if (self != nil)
	{
		self.tableViewCell = tableViewCell;
		self.opaque = YES;
	}

	return self;
}

- (void)setTableViewCell:(LTTableViewCell *)tableViewCell
{
	if (tableViewCell != self.tableViewCell)
	{
		[tableViewCell retain];
		[tableViewCell_ release];
		tableViewCell_ = tableViewCell;

		if (self.tableViewCell != nil)
		{
			self.frame = self.tableViewCell.contentView.bounds;
			self.backgroundColor = self.tableViewCell.backgroundColor;
		}
	}
}

#pragma mark -
#pragma mark UIView Methods

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
	return [self initWithTableViewCell:nil];
}

- (void)dealloc
{
	[tableViewCell_ release];

	tableViewCell_ = nil;

	[super dealloc];
}

@end