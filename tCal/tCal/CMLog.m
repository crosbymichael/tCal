//
//  CMLog.m
//  CommandLineAssistant
//
//  Created by Michael Crosby on 10/27/11.
//  Copyright (c) 2011 Michael Crosby. All rights reserved.
//

#import "CMLog.h"

@implementation CMLog

+ (void)error:(NSString *)data {
    fprintf(stderr, "%s\n", [data UTF8String]);
}

+ (void)log:(NSString *)data {
    fprintf(stdout, "%s\n", [data UTF8String]);
}

@end
