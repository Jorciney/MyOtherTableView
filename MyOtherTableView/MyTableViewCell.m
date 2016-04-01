//
//  MyTableViewCell.m
//  MyOtherTableView
//
//  Created by user116613 on 3/15/16.
//  Copyright © 2016 user116613. All rights reserved.
//

#import "MyTableViewCell.h"

@implementation MyTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void)setUpCell:(People *)person{
    _nameLabel.text= [NSString stringWithFormat:@"%@ %@", person.fName, person.lName ];
    _wageLabel.text=[NSString stringWithFormat:@"%05d €", (int)person.wage ];
   
}


@end
