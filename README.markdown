# LTKit #
<a name="top"></a>

## Change Log ##

Nontrivial changes to this repository will be logged here.

- **05/18/2010 08:56 PM**: Began using [Doxygen][7] for code commenting.
- **05/11/2010 07:48 PM**: <a href="#automatic-fast-table-view-cell-rendering">Fast, smooth table view cell rendering</a> with corresponding sample project: <a href="#sample-project-fasttableviewcells">FastTableViewCells</a>
- **05/10/2010 07:20 PM**: Repository creation.

## Usage Instructions ##

Detailed instructions coming soon, I promise! In the mean time...

**LTKit** is built as a static library and is included similar to other static libraries. Add it to your project, set it as a target direct dependency, set your header search paths to point to the `LTKit` root directory, and add `-ObjC` and `-all_load` linker flags to your project or target settings.

## Overview ##

This repository represents a serious effort to create a meaningful, well-developed, thoroughly-tested, and easily-usable framework for iPhone OS development. Inspired by [Three20][1] and by amazingly well-designed apps such as [Tweetie 2 for iPhone][2] (soon to be Twitter for iPhone), **LTKit** is intended to simplify a variety of tasks that this developer feels aren't easily or naturally accommodated by the iPhone SDK's out-of-the-box offerings.

While I doubt this library will ever grow to the level of complexity of the Three20 library, it is my hope that what features and conveniences it does offer are helpful to other developers. With a strong emphasis on good UI and UX practices, **LTKit**, at least for the time being, will likely focus on processes that simplify the development and design of common UI tasks and even offer new views, classes, and categories for improving the end user's experience.

I very strongly believe that good apps require beautiful, sensible design. Apple is indisputably the king of aesthetics and design in the consumer technology industry. Their iPhone OS platform offers extremely powerful tools to really bring out the most in developers' apps. However, it can be extremely tedious to configure every minute detail of every view to make things look just right. **LTKit** aims to alleviate some of this tedium.

## Purpose ##

**LTKit** has some lofty goals. At this point, I don't even know how or if some of them will be achieved, but after all, what's the point (or fun) in making goals devoid of any challenge?

### Guidelines ###

  - **Pristine Code**: Consistent coding style, best-practice development, and self-documentation.
  - **Highly Generic**: Code that is as broad and reusable as possible.
  - **Deep Implementation**: Considering as many variations and use cases as possible to prevent underdeveloped or edge-case-intolerant features.
  - **Detailed Documentation Where Necessary**: At the very least, thorough documentation and discussion for every non-trivial method.
  - **Plenty of Examples**: The creation of sample projects to showcase each major feature with as much variety as possible.
  - **Current**: Always making use of the latest official SDK and third-party library offerings. (As of 05/11/2010, **LTKit** is targeting iPhone OS 4.0.)

### Goals ###

  - **Advanced UI Features**: Similar to Three20's collection of simplified, advanced views and controllers (e.g., `TTModelViewController`, `TTTableItem`), **LTKit** will attempt to develop new views, new ways of interacting with existing views, and a means of standardizing UX and design practices.
  - **Fluid Layout**: Managing complicated view layouts can be difficult, error-prone, and tedious. Although I hate to admit it, Android's HTML-like layout allows for views to automatically position and lay themselves out. The iPhone OS SDK has only rudimentary support for these sorts of features. It would be much more convenient to give views the capability to intelligently and automatically determine how their subviews are positioned and sized.
  - **Advanced Debug Logging**: Especially for things like view hierarchies, a means for automatically generating `NSLog` statements that contain a variety of useful debugging statements would be extremely helpful. A bridge to a basic Cocoa desktop application that can read, parse, and display this debug output in an organized, easy-to-read manner might also be useful.
  - **UI Testing**: The incorporation of some form of highly-automated, highly-configurable UI testing is crucial as apps contain more and more complicated, feature-rich UI components.

## Current Features ##

<a name="automatic-fast-table-view-cell-rendering"></a>
### Automatic, Fast Table View Cell Rendering ###

*Status: Work-in-progress*

Table view cells that are heavy-laden with subviews, especially those that make use of transparency, result in choppy table view scrolling. While it is possible to composite subviews into a single subview using Core Graphics drawing, this is tedious and must be customized for each table view cell. Given certain (reasonable) constraints, it is possible to automate this compositing process using nibs as references for laying out these composited views. This technique is based on the information from a [blog post by atebits][8].

#### Highlights ####

  - Subclassing `LTTableViewCell` allows a class to make use of Core Graphics to composite its basic subviews into a single, efficient view.
  - Currently, `LTTableViewCell`'s compositing view class, `LTTableViewCellCompositeView`, supports drawing the following `UIView` subclasses: `UILabel` and `UIImageView`.
  - Support for hybridizing `LTTableViewCell` is planned. This will allow for animated views (e.g., `UIActivityIndicatorView`) and `UIControl` subclasses (e.g., `UITextField`) to exist independent of the composite view.
  - Use Interface Builder to easily configure the myriad of properties for each table view cell and its subviews.
  - Only one method, `-drawCompositeView`, needs to be called on your table view cells before returning them within the body of `-tableView:cellForRowAtIndexPath:`.
  - Omitting the call to `-drawCompositeView` allows your table view cells to function exactly as they would normally, relying on the iPhone SDK's default rendering and layout of table view cells.

<a name="sample-project-fasttableviewcells"></a>
#### Sample Project: FastTableViewCells ####

*Status: Work-in-progress*  
*Main Classes Used: `LTTableViewCell`*  
*Location: [LTKit/Samples/FastTableViewCell][6]*

This sample project simply constructs a table view containing a very large number of repeating table view cells. The table view cell, called `TableViewCell`, contains three `UILabel`s and one `UIImageView`. Its corresponding nib, also called `TableViewCell` has a fairly basic layout. It makes use of `UIView`'s `autoresizingMask` property to define how its subviews will adjust to changes to its frame. As a result, landscape device orientation is supported as well. Removing or commenting out the call to `-drawCompositeView` in `RootViewController` will cause the table view cells to be rendered as usual.

## License ##

Copyright 2010 Michael Shannon Potter

LucasTizma  
[www.lucastizma.com][3]  
[lucastizma@lucastizma.com][4] (E-mail/AIM)

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

[http://www.apache.org/licenses/LICENSE-2.0][5]

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.


  [1]: http://www.three20.info "Three20"
  [2]: http://www.atebits.com/tweetie-iphone/ "Tweetie 2 for iPhone"
  [3]: http://www.lucastizma.com "www.lucastizma.com"
  [4]: mailto:lucastizma@lucastizma.com "lucastizma@lucastizma.com"
  [5]: http://www.apache.org/licenses/LICENSE-2.0 "http://www.apache.org/licenses/LICENSE-2.0"
  [6]: http://github.com/LucasTizma/LTKit/tree/master/Samples/FastTableViewCells/ "LTKit/Samples/FastTableViewCell"
  [7]: http://www.stack.nl/~dimitri/doxygen/ "Doxygen"
  [8]: http://blog.atebits.com/2008/12/fast-scrolling-in-tweetie-with-uitableview/ "blog post by atebits"