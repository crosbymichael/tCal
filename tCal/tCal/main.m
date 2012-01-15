//
//  main.m
//  tCal
//
//  Created by Michael Crosby on 1/14/12.
//  Copyright (c) 2012 Michael Crosby. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CMCalendar.h"
#import "CMArgumentParser.h"
#import "ITerminalOutput.h"

#define DEFAULTDAYS 5

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        CMCalendar * calendar = [[CMCalendar alloc] init];
        CMArgumentParser * parser = [[CMArgumentParser alloc] init];
        NSInteger days;
        
        @try {
            days = [(NSString *)[parser argumentForName:@"-d"] integerValue];
        }
        @catch (NSException *exception) {
            days = DEFAULTDAYS;
        }
        NSArray * events = [calendar getEventsForDays:days];
        for (id <ITerminalOutput> output in events) {
            [output display];
        }

    }
    return 0;
}

