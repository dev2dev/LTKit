//
//  LTTableViewCellCompositeView.h
//  LTKit
//
//  Created by Michael Potter on 5/10/2010.
//  Copyright 2010 LucasTizma. All rights reserved.
//

@class LTTableViewCell;

@interface LTTableViewCellCompositeView : UIView
{
	@private

	LTTableViewCell * tableViewCell_;
}

@property (nonatomic, retain) LTTableViewCell * tableViewCell;

- (id)initWithFrame:(CGRect)frame tableViewCell:(LTTableViewCell *)tableViewCell;

@end