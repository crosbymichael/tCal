//
//  CMArgumentParser.m
//  tCal
//
//  Created by Michael Crosby on 1/14/12.
//  Copyright (c) 2012 Michael Crosby. All rights reserved.
//

#import "CMArgumentParser.h"

@interface CMArgumentParser()

- (void) parseRawArguments;

@end

@implementation CMArgumentParser 


- (id)argumentForName:(NSString *)name {
    id output = nil;
    if (arguments.count > 0){
        output = [arguments objectForKey:name];
    }
    return output;
}

- (void) parseRawArguments {
    NSArray * args = [[NSProcessInfo processInfo] arguments];
    if (args && args.count > 1) {
        arguments = [[NSMutableDictionary alloc] init];
        int i = 1;
        while (i < args.count) {
            [arguments setValue:[args objectAtIndex:(i + 1)] forKey:[args objectAtIndex:i]];
            i = i + 2;
        }
    }
}

- (id)init {
    self = [super init];
    if (self) {
        [self parseRawArguments];
    }
    return self;
}

@end
