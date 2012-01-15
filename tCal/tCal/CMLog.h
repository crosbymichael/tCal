//
//  CMLog.h
//  CommandLineAssistant
//
//  Created by Michael Crosby on 10/27/11.
//  Copyright (c) 2011 Michael Crosby. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CMLog : NSObject

+ (void) error: (NSString *) data;

+ (void) log: (NSString *) data;

@end
