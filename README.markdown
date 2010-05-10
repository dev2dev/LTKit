LTKit<a name=top></a>
=====

Change Log
----------

Nontrivial changes to this repository will be logged here.

- **05/10/2010 07:20 PM**: Repository creation.

Overview
--------

This repository hosts various Objective-C helper classes and categories that were created to assist in the development of iPhone applications. While some contain implementation-specific details, the general ideas and class structures are generic enough to perhaps be useful to other people. Eventually, I will eradicate all project-specific references and make these classes completely generic.

LTPickerView<a name="ltpickerview"></a>
------------
[(back to top)](#top)

### LTPickerView Methods ###

    - ( void )selectRow:( NSInteger )row inComponent:( NSInteger )component animated:( BOOL )animated;
    - ( void )pickButtonPressed;
    - ( void )cancelButtonPressed;
    - ( void )show;
    - ( void )hide;
    - ( void )animationDidStop:( NSString * )animationID finished:( NSNumber * )finished context:( void * )context;

### LTPickerViewDelegate Methods ###

    - ( void )pickerView:( UIPickerView * )pickerView didPickRows:( NSArray * )rows;
    - ( void )pickerViewDidCancel:( UIPickerView * )pickerView;

*This class probably contains implementation-specific details, most (if not all) of which are indicated in ***bold*** below.*

`LTPickerView` was created because `UIPickerView` does not naturally facilitate picker views that can be easily shown (slide-up) and hidden (slide-down) without manually implementing view hiding. It also includes a button toolbar similar to how `UIPickerView` does in Mobile Safari.

`LTPickerView` has a very simple implementation. Once initialized with `UIView`'s `initWithFrame:` method and assigned a delegate and data source, you just call `show` and `hide` to slide-up and slide-down the picker view, respectively. In its current implementation, you do not add your instance of `LTPickerView` as a subview to any view. **Instead, `LTPickerView` adds itself (hidden) to the view of the selected view controller of a tab bar controller, which is assumed to be attached to the app delegate. This is implementation specific and needs to be changed.**

For now, `LTPickerView` adds two buttons to its button toolbar: *Pick* and *Cancel*. **It is assumed that there are image assets named `picker-button-pick.png` and `picker-button-cancel.png` to be used as button graphics.** Classes that make use of `LTPickerView` should conform to the `LTPickerViewDelegate` and `UIPickerViewDataSource` protocols. `LTPickerView` will send callbacks to its delegate whenever the *Pick* or *Cancel* buttons are tapped, via `pickerView:didPickRows:` and `pickerViewDidCancel`, respectively. Tapping either button also hides the picker view.

`LTPickerView` supports multi-row pickers, and `pickerView:didPickRows:` provides the delegate with an array of `NSNumber`s (as `NSInteger`s) that represent the selected rows of each component. For example, in a three-component picker view, `pickerView:didPickRows:` might provide the following array: `[ 2, 0, 5 ]`. These means that the third, first, and sixth rows were selected from components one, two, and three, respectively.