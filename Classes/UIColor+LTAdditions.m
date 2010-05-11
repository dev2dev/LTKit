//
//  UIColor+LTAdditions.m
//  LTKit
//
//  Created by Michael Potter on 5/11/2010.
//  Copyright 2010 LucasTizma. All rights reserved.
//

#import "LTKit/UIColor+LTAdditions.h"

@implementation UIColor (LTAdditions)

#pragma mark -
#pragma mark UIColor (LTAdditions) Methods

+ (UIColor *)colorWithAbsoluteRed:(CGFloat)red green:(CGFloat)green blue:(CGFloat)blue
{
	return [[[UIColor alloc] initWithAbsoluteRed:red green:green blue:blue] autorelease];
}

- (UIColor *)initWithAbsoluteRed:(CGFloat)red green:(CGFloat)green blue:(CGFloat)blue
{
	return [self initWithRed:(red / 255.0) green:(green / 255.0) blue:(blue / 255.0) alpha:1.0];
}

@end