//
//  CMEvent.m
//  tCal
//
//  Created by Michael Crosby on 1/14/12.
//  Copyright (c) 2012 Michael Crosby. All rights reserved.
//

#import "CMEvent.h"

@interface CMEvent()

- (NSString *)formatDate:(NSDateFormatter *)formatter date: (NSDate *) date;

@end

@implementation CMEvent

- (void)display {
    [CMLog log:[NSString stringWithFormat:@"%@ on %@ at %@", _title, _date, _time]];
}

- (void)setColor:(NSString *)color {
    _color = color;
}

- (id)initWithDateAndTime: (NSDate *) date time: (NSDate *) time title:(NSString*) title {
    self = [super init];
    if (self) {
        _date = [self formatDate:[CMDateFormatterFactory CreateDateFormatter] date:date];
        _time = [self formatDate:[CMDateFormatterFactory CreateTimeFormatter] date:time];
        _title = title;
    }
    return self;
}

- (NSString *)formatDate:(NSDateFormatter *)formatter date: (NSDate *) date {
    return [formatter stringFromDate:date];
}

@end
