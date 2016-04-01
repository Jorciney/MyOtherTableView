//
//  PeopleDetailsViewController.h
//  MyOtherTableView
//
//  Created by user116613 on 3/16/16.
//  Copyright © 2016 user116613. All rights reserved.
//

#import "ViewController.h"
#import "People.h"

@interface PeopleDetailsViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *myWageLabel;
@property (strong,nonatomic) People *person;

@end
