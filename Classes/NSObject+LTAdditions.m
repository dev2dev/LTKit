//
//  NSObject+LTAdditions.m
//  LTKit
//
//  Created by Michael Potter on 5/10/2010.
//  Copyright 2010 LucasTizma. All rights reserved.
//

#import "LTKit/NSObject+LTAdditions.h"
#import <objc/runtime.h>

@implementation NSObject (LTAdditions)

#pragma mark -
#pragma mark NSObject (LTAdditions) Methods

+ (NSArray *)propertyNames
{
	NSUInteger numberOfProperties;
	objc_property_t * properties = class_copyPropertyList([self class], (& numberOfProperties));

	NSMutableArray * propertyNames = [NSMutableArray arrayWithCapacity:numberOfProperties];

	for (int i = 0; i < numberOfProperties; i++)
	{
		objc_property_t property = properties[i];
		[propertyNames addObject:[NSString stringWithCString:property_getName(property)	encoding:NSUTF8StringEncoding]];
	}

	return (NSArray *)propertyNames;
}

@end