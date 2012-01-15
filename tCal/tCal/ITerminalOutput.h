//
//  ITerminalOutput.h
//  tCal
//
//  Created by Michael Crosby on 1/14/12.
//  Copyright (c) 2012 Michael Crosby. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ITerminalOutput <NSObject>

- (void) display;
- (void) setColor: (NSString *) color;

@end
