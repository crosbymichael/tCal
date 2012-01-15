//
//  CMDateFormatterFactory.m
//  tCal
//
//  Created by Michael Crosby on 1/14/12.
//  Copyright (c) 2012 Michael Crosby. All rights reserved.
//

#import "CMDateFormatterFactory.h"

@implementation CMDateFormatterFactory

+ (NSDateFormatter *) CreateDateFormatter {
    NSDateFormatter * formatter = [[NSDateFormatter alloc] init];
    [formatter setDateStyle:NSDateFormatterMediumStyle];
    
    return formatter;
}

+ (NSDateFormatter *) CreateTimeFormatter {
    NSDateFormatter * formatter = [[NSDateFormatter alloc] init];
    [formatter setTimeStyle:NSDateFormatterMediumStyle];
    return formatter;
}


@end
