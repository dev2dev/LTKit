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

@class LTTableViewCell;

///
/// A view class that composites certain LTTableViewCell subviews using lower-level drawing methods
///
/// This class requires a fully initialized table view cell (most easily configured in Interface Builder and saved as a nib) that contains
/// drawable subviews. The properties of these subviews serve as a reference so that this view can replicate their appearance using more
/// efficient drawing methods rather than relying on the iPhone SDK to manage and draw multiple <tt>UIView</tt>s.
///
/// At the moment, this class detects and draws the following <tt>UIView</tt> subclasses:
///    - <tt>UILabel</tt>, via <tt>NSString</tt>'s <tt>-drawInRect:withFont:lineBreakMode:alignment:</tt> method
///    - <tt>UIImageView</tt>, via <tt>UIImage</tt>'s <tt>-drawInRect:</tt> method
///
/// Importantly, the properties of the subviews of #tableViewCell should be set to allow for the drawing methods to function properly.
/// Specifically, the frame of the subview should be valid at the very least. In addition to this, for <tt>UILabel</tt>s, specifying the
/// font, line break mode, and alignment will allow the rendered string to be properly formatted. Making use of Interface Builder is
/// recommended as these properties can quickly be configured visually.
///

@interface LTTableViewCellCompositeView : UIView
{
	@private

	LTTableViewCell * tableViewCell_;
}

///
/// A reference table view cell initialized from a nib whose subviews are used to layout and configure the drawing operations
///
/// <em>(This property is backed by the private instance variable <tt>tableViewCell_</tt></em>)
///

@property (nonatomic, retain) LTTableViewCell * tableViewCell;

///
/// Autoreleases the return result of #initWithTableViewCell:
///
/// @see #initWithTableViewCell:
///

+ (id)viewWithTableViewCell:(LTTableViewCell *)tableViewCell;

///
/// Creates a <tt>UIView</tt> whose <tt>-drawRect:</tt> method draws viable subviews from the #tableViewCell property
///
/// This initializer sets the value of the #tableViewCell property. When <tt>-drawRect:</tt> is called on this view, it uses #tableViewCell
/// to determine what <tt>UIView</tt> subviews can be composited.
///
/// @param tableViewCell	the reference table view cell used to inform this view what to composite
///
/// @returns a <tt>UIView</tt> optimized for fast drawing in table view cells
///

- (id)initWithTableViewCell:(LTTableViewCell *)tableViewCell;

@end