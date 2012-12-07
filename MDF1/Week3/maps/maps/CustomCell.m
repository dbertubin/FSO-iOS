//
//  CustomCell.m
//  maps
//
//  Created by Derek Bertubin on 12/5/12.
//  Copyright (c) 2012 Derek Bertubin. All rights reserved.
//

#import "CustomCell.h"

@implementation CustomCell

@synthesize cellLabel,subCellLabel;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
