#import <Cocoa/Cocoa.h>
#import "RedSquareView.h"
#import "WindowInitializer.h"
#import "AppDelegateInitializer.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Create the application
        NSApplication *application = [NSApplication sharedApplication];

        // Set the application delegate
        AppDelegate *appDelegate = [[AppDelegate alloc] init];
        [application setDelegate:appDelegate];

        // Initialize the window
        NSWindow *window = [WindowInitializer initializeWindow];

        // Create the red square view
        RedSquareView *redSquareView = [[RedSquareView alloc] initWithFrame:NSMakeRect(0, 0, 400, 300)]; // Set the frame size of the custom view

        // Add the red square view to the content view of the window
        [[window contentView] addSubview:redSquareView];
        
        // Run the application
        [application run];
    }
    return 0;
}
