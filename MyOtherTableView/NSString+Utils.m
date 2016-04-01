//
//  NSString+Utils.m
//  MyOtherTableView
//
//  Created by user116613 on 3/15/16.
//  Copyright © 2016 user116613. All rights reserved.
//

#import "NSString+Utils.h"

@implementation NSString(NSStringUtils)


-(NSString *) getFirstLetterInUpperCase:(NSString *) str {
    NSString *letter=@"";
    if(str.length>0){
        letter=[[str substringToIndex:1] capitalizedString];
    }
    
    return letter;
}

@end
