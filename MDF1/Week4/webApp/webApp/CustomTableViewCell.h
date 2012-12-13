//
//  CustomTableViewCell.h
//  webApp
//
//  Created by Derek Bertubin on 12/12/12.
//  Copyright (c) 2012 Derek Bertubin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *textLabel;

@property (weak, nonatomic) IBOutlet UILabel *subTextLabel;

@end
