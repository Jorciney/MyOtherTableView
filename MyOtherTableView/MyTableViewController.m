//
//  MyTableViewController.m
//  MyOtherTableView
//
//  Created by user116613 on 3/15/16.
//  Copyright © 2016 user116613. All rights reserved.
//

#import "People.h"
#import "MyTableViewController.h"
#import "MyTableViewCell.h"
#import "PeopleDetailsViewController.h"

@interface MyTableViewController ()
@property (weak, nonatomic) IBOutlet UISearchBar *search;
@property (strong, nonatomic) NSMutableArray *dataSource;

@end

@implementation MyTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    self.search.delegate=self;
   
    [self loadData];
   
}
-(void)viewWillAppear:(BOOL)animated{
     [self.tableView reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)loadData{
    
    
    NSArray *receivedData= [People fetchPeople];
    
    NSSortDescriptor *sort=[NSSortDescriptor sortDescriptorWithKey:@"fName" ascending:YES];
    receivedData=[receivedData sortedArrayUsingDescriptors:@[sort]];
    
    //2) Initialize
    _dataSource=[[NSMutableArray alloc]init];
    NSMutableArray *currentLetterSection=[[NSMutableArray alloc]init];
    NSString *currentLetter=@"";
    
    //4)  Get first letter of a the person
    if ([receivedData count]>0) {
        currentLetter=[self getFirstLetterInUpperCase:((People *)receivedData[0]).fName];
    }
    [_dataSource addObject:currentLetterSection];
    
    //Algarithim to add the sections to the datasource
    for (People *person in receivedData) {
        NSString *personFirstLetter=[self getFirstLetterInUpperCase:person.fName];
        
        if (![personFirstLetter isEqualToString:currentLetter]) {
            currentLetter=personFirstLetter;
            currentLetterSection=[[NSMutableArray alloc]init];
            [_dataSource addObject:currentLetterSection];
        }
        
        [currentLetterSection addObject:person];
    }
  
}
-(NSString *) getFirstLetterInUpperCase:(NSString *) str {
NSString *letter=@"";
    if(str.length>0){
        letter=[[str substringToIndex:1] capitalizedString];
    }
    
    return letter;
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return [self.dataSource count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return [_dataSource[section] count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    MyTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MyIdentifier" forIndexPath:indexPath];
    
    NSMutableArray *currentSection=self.dataSource[indexPath.section];
    
    People *currentPerson=currentSection[indexPath.row];
    // Configure the cell...
    [cell setUpCell:currentPerson];
    
    return cell;
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    NSMutableArray *currentArray=self.dataSource[section];
    NSString *result=@"";
    if ([currentArray count]>0) {
          People *p=[currentArray firstObject];
        result=[self getFirstLetterInUpperCase:p.fName];
    }
    
    return result;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSMutableArray *currentSection=_dataSource[indexPath.section];
    People *person =currentSection[indexPath.row];
    NSLog(@"%@",person.fName);
    [self performSegueWithIdentifier:@"mySegueIdentifier" sender:person];
}
/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if([segue.identifier isEqualToString:@"mySegueIdentifier"]){
        PeopleDetailsViewController *detailsViewController=segue.destinationViewController;
        if ([sender isKindOfClass:[People class]]) {
            detailsViewController.person=sender;
        }
    }
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}


@end
