//
//  GARSSTableViewCell.m
//  PlayStationRSSFeed
//
//  Created by Gabriel Afonso on 1/29/15.
//  Copyright (c) 2015 ETC. All rights reserved.
//

#import "GAImageTableViewCell.h"

@implementation GAImageTableViewCell

- (void)prepareForReuse
{
    [super prepareForReuse];
    self.logoImageView.image = nil;
    self.titleLabel.text = @"";
}

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
