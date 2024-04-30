#import "AppDelegateInitializer.h"

@implementation AppDelegate

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
    NSLog(@"Application will terminate.");
}

- (BOOL)applicationShouldTerminateAfterLastWindowClosed:(NSApplication *)sender {
    // Terminate the application when the last window is closed
    return YES;
}

@end