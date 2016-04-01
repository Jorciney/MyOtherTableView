//
//  People.h
//  MyOtherTableView
//
//  Created by user116613 on 3/15/16.
//  Copyright © 2016 user116613. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface People : NSObject

@property(strong, nonatomic) NSString *fName;
@property(strong, nonatomic) NSString *lName;
@property(assign, nonatomic) NSInteger wage;


-(instancetype) initWithFname:(NSString *)fName andLName:(NSString*) lName;


+(NSArray *) fetchPeople;

@end
