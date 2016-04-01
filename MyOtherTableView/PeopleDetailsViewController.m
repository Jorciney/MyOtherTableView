//
//  PeopleDetailsViewController.m
//  MyOtherTableView
//
//  Created by user116613 on 3/16/16.
//  Copyright © 2016 user116613. All rights reserved.
//

#import "PeopleDetailsViewController.h"

@interface PeopleDetailsViewController ()

@end

@implementation PeopleDetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"%@", _person.fName);
    _myWageLabel.text= [NSString stringWithFormat:@"%05d", (int)_person.wage ];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)changeWageValue:(UIStepper *)sender {
    NSLog(@"%@", _person.fName);
    _person.wage += 100;
   
    _myWageLabel.text= [NSString stringWithFormat:@"%05d", (int)_person.wage ];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
