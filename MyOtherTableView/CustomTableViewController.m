//
//  CustomTableViewController.m
//  MyOtherTableView
//
//  Created by user116613 on 3/16/16.
//  Copyright © 2016 user116613. All rights reserved.
//

#import "CustomTableViewController.h"

@interface CustomTableViewController ()
@property (weak, nonatomic) IBOutlet UITableView *myTableView;

@end

@implementation CustomTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.myTableView.delegate=self;
    self.myTableView.dataSource=self;
    [self.myTableView reloadData];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 40;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"myCustomIdentifier" forIndexPath:indexPath];
    
       // Configure the cell..
    
    return cell;

}


-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;

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
