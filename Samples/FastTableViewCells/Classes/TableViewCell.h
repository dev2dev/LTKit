//
//  TableViewCell.h
//  FastTableViewCells
//
//  Created by Michael Potter on 5/10/2010.
//  Copyright 2010 LucasTizma. All rights reserved.
//

#import "LTKit/LTTableViewCell.h"

@interface TableViewCell : LTTableViewCell
{
	@private

	UIImageView * imageView_;
	UILabel * firstLabel_;
	UILabel * secondLabel_;
	UILabel * thirdLabel_;
}

@property (nonatomic, retain) IBOutlet UIImageView * imageView;
@property (nonatomic, retain) IBOutlet UILabel * firstLabel;
@property (nonatomic, retain) IBOutlet UILabel * secondLabel;
@property (nonatomic, retain) IBOutlet UILabel * thirdLabel;

@end