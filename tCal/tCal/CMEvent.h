//
//  CMEvent.h
//  tCal
//
//  Created by Michael Crosby on 1/14/12.
//  Copyright (c) 2012 Michael Crosby. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ITerminalOutput.h"
#import "CMDateFormatterFactory.h"
#import "CMLog.h"

@interface CMEvent : NSObject 
<ITerminalOutput>{
    NSString * _date;
    NSString * _time;
    NSString * _title;
    NSString * _color;
}

- (id)initWithDateAndTime: (NSDate *) date time: (NSDate *) time title:(NSString*) title;

@end
