//
//  TableCell.h
//  FastTableViewCells
//
//  Created by Michael Potter on 5/10/2010.
//  Copyright 2010 LucasTizma. All rights reserved.
//

#import "LTKit/LTTableViewCell.h"

@interface TableCell : LTTableViewCell
{
	@private

	UIImageView * imageView_;
	UILabel * firstLabel_;
	UILabel * secondLabel_;
	UILabel * thirdLabel_;
//	NSString * imageName_;
//	NSString * firstLabelText_;
//	NSString * secondLabelText_;
//	NSString * thirdLabelText_;
}

@property (nonatomic, retain) IBOutlet UIImageView * imageView;
@property (nonatomic, retain) IBOutlet UILabel * firstLabel;
@property (nonatomic, retain) IBOutlet UILabel * secondLabel;
@property (nonatomic, retain) IBOutlet UILabel * thirdLabel;
//@property (nonatomic, copy) NSString * imageName;
//@property (nonatomic, copy) NSString * firstLabelText;
//@property (nonatomic, copy) NSString * secondLabelText;
//@property (nonatomic, copy) NSString * thirdLabelText;

@end