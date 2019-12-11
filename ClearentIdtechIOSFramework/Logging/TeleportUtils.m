//
//  TeleportConfig.m
//  Pods
//
//  Created by Kenneth on 1/17/15.
//
//

#import "TeleportUtils.h"
#import "Teleport.h"

@implementation TeleportUtils

+ (void)teleportDebug:(NSString *)format, ... {

    if (TELEPORT_DEBUG) {
        NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
        [dateFormat setDateFormat:@"HH:mm:ss:SSS"];
        //NSDate *now = [[NSDate alloc] init];
        //NSString* timeString = [dateFormat stringFromDate:now];
        NSString *contents;
        va_list args;
        va_start(args, format);
        contents = [[NSString alloc] initWithFormat:format arguments:args];
        va_end(args);
    }

}
@end
