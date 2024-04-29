#import <Foundation/Foundation.h>
#import <Cocoa/Cocoa.h>

@interface ButtonActionHandler : NSObject

- (void)buttonClicked:(id)sender;

- (void)generateRandomRectangleForWindow:(NSWindow *)window;

- (void)generateRandomCircleForWindow:(NSWindow *)window;

@end