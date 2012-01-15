//
//  CMCalendar.m
//  tCal
//
//  Created by Michael Crosby on 1/14/12.
//  Copyright (c) 2012 Michael Crosby. All rights reserved.
//

#import "CMCalendar.h"

@interface CMCalendar() 

- (NSArray *) eventsForDays: (NSInteger) daysForward;

@end

@implementation CMCalendar

- (NSArray *) eventsForDays: (NSInteger) daysForward {
    
    NSDate * today = [NSDate date];
    
    NSDate * dayForward = [today dateByAddingTimeInterval:DAYASINTERVAL * daysForward];
    
    NSPredicate *eventsForThisYear = 
        [CalCalendarStore 
         eventPredicateWithStartDate:today 
         endDate:dayForward 
         calendars:[[CalCalendarStore defaultCalendarStore] calendars]];
        
    NSArray * events = [[CalCalendarStore defaultCalendarStore] eventsWithPredicate:eventsForThisYear];
    NSMutableArray * output = [[NSMutableArray alloc] initWithCapacity:[events count]];
    for (CalEvent * evt in events) {
        [output addObject:[[CMEvent alloc] initWithDateAndTime:[evt startDate] time:[evt startDate] title:[evt title]]];
    }
    return output;
}

- (NSArray *) getTodaysEvents {
    return [self eventsForDays:1];
}


- (NSArray *) getWeeksEvents {
    return [self eventsForDays:7];
}

- (NSArray *) getEventsForDays: (NSInteger ) days {
    return [self eventsForDays:days];
}

    
@end
