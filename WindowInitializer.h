#import <Cocoa/Cocoa.h>

@interface WindowInitializer : NSObject

+ (NSWindow*)initializeWindowWithRect:(NSRect)rect title:(NSString*)title;

@end