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

#import <UIKit/UIKit.h>

///
/// A category on <tt>UIColor</tt> that contains various helper methods.
///

@interface UIColor (LTAdditions)

///
/// Autoreleases the return result of #initWithAbsoluteRed:green:blue:
///
/// @see #initWithAbsoluteRed:green:blue:
///

+ (UIColor *)colorWithAbsoluteRed:(CGFloat)red green:(CGFloat)green blue:(CGFloat)blue;

///
/// Creates a <tt>UIColor</tt> whose red, green, and blue values are within the range [0.0, 255.0].
///
/// <tt>UIColor</tt> has a constructor called <tt>-initWithRed:green:blue:alpha:</tt> that accepts its color component
/// parameters as percentages (i.e., between the values 0.0 and 1.0). This method transforms its parameters to the correct
/// percentages and calls <tt>-initWithRed:green:blue:alpha:</tt> using them. An alpha value of 1.0 is used.
///
/// @param red		the red value of the color specified as a <tt>CGFloat</tt> between 0.0 and 255.0
/// @param green	the green value of the color specified as a <tt>CGFloat</tt> between 0.0 and 255.0
/// @param blue		the blue value of the color specified as a <tt>CGFloat</tt> between 0.0 and 255.0
///
/// @returns a <tt>UIColor</tt> created by specifying red, green, and blue values
///

- (UIColor *)initWithAbsoluteRed:(CGFloat)red green:(CGFloat)green blue:(CGFloat)blue;

@end