//
//  CMArgumentParser.h
//  tCal
//
//  Created by Michael Crosby on 1/14/12.
//  Copyright (c) 2012 Michael Crosby. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CMArgumentParser : NSObject {
    NSMutableDictionary * arguments;
}

- (id) argumentForName: (NSString *) name;

@end
