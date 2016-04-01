//
//  People.m
//  MyOtherTableView
//
//  Created by user116613 on 3/15/16.
//  Copyright © 2016 user116613. All rights reserved.
//

#import "People.h"

@implementation People

-(id)init{
    return [self initWithFname:@"Empty" andLName:@"Empty"];
}

-(instancetype) initWithFname:(NSString *)fName andLName:(NSString*) lName{
    self=[super init];
    if(self){
        _fName=fName;
        _lName=lName;
       // _wage=0,00;
    }
    return self;
}
-(NSString *)fullName{
    return [NSString stringWithFormat:@"%@ %@", _fName,_lName ];
    
}


-(NSString *)description{
    return [self fullName];
}
+(NSArray *)fetchPeople{
  People *p1=[[People alloc]initWithFname:@"Florian" andLName:@"Praile"];
    People *p2=[[People alloc]initWithFname:@"Johan" andLName:@"Snel"];
    People *p3=[[People alloc]initWithFname:@"Stefan" andLName:@"Paes"];
    People *p4=[[People alloc]initWithFname:@"Jorciney" andLName:@"Dias"];
    People *p5=[[People alloc]initWithFname:@"Matthias" andLName:@"Something"];
    People *p6=[[People alloc]initWithFname:@"Dalia" andLName:@"Gonzales"];
    People *p7=[[People alloc]initWithFname:@"Gino" andLName:@"Something"];
    People *p8=[[People alloc]initWithFname:@"Ann" andLName:@"Something"];
    People *p9=[[People alloc]initWithFname:@"Pawel" andLName:@"iets"];
    
  return @[p1,p2,p3,p4,p5,p6,p7,p8,p9];
}

@end
