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
/// A subclass of <tt>UITableViewCell</tt> that supports fast drawing via view compositing.
///

@interface LTTableViewCell : UITableViewCell

///
/// Draws a view composited from the view hierarchy defined by <tt>self</tt>.
///
/// This method creates a new LTTableViewCellCompositeView by initializing it with <tt>self</tt>. After removing any previous subviews of
/// type LTTableViewCellCompositeView and hiding subviews of any other type, this method then adds the newly drawn
/// LTTableViewCellCompositeView as a subview. Subviews are hidden because they are used only as layout guides for
/// LTTableViewCellCompositeView and should not be rendered on the screen as usual. Doing so would defeat the purpose of using fast view
/// compositing.
///
/// @see LTTableViewCellCompositeView
///

- (void)drawCompositeView;

@end