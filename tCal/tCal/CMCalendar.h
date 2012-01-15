//
//  CMCalendar.h
//  tCal
//
//  Created by Michael Crosby on 1/14/12.
//  Copyright (c) 2012 Michael Crosby. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CalendarStore/CalendarStore.h>
#import "CMEvent.h"

#define DAYASINTERVAL 86400

@interface CMCalendar : NSObject

- (NSArray *) getTodaysEvents;

- (NSArray *) getWeeksEvents;

- (NSArray *) getEventsForDays: (NSInteger ) days;


@end
