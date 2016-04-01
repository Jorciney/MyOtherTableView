//
//  MyTableViewCell.h
//  MyOtherTableView
//
//  Created by user116613 on 3/15/16.
//  Copyright © 2016 user116613. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "People.h"

@interface MyTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *wageLabel;


-(void)setUpCell:(People *) person;

@end
