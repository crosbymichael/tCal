//
//  CMDateFormatterFactory.h
//  tCal
//
//  Created by Michael Crosby on 1/14/12.
//  Copyright (c) 2012 Michael Crosby. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CMDateFormatterFactory : NSObject

+ (NSDateFormatter *) CreateDateFormatter;

+ (NSDateFormatter *) CreateTimeFormatter;

@end
