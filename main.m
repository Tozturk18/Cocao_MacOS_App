#import <Cocoa/Cocoa.h>
#import "WindowInitializer.h"
#import "AppDelegateInitializer.h"
#import "RectView.h"
#import "TextView.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Create the application
        NSApplication *application = [NSApplication sharedApplication];

        // Set the application delegate
        AppDelegate *appDelegate = [[AppDelegate alloc] init];
        [application setDelegate:appDelegate];

        // Initialize the window
        NSWindow *window = [WindowInitializer initializeWindow];

        // Create a green rectangle view
        RectView *greenRectView = [RectView rectViewWithRect:NSMakeRect(0, 0, 100, 100) color:[NSColor greenColor]];
        // Add the green rectangle view to the content view of the window
        [[window contentView] addSubview:greenRectView];

        // Create a green rectangle view
        RectView *redRectView = [RectView rectViewWithRect:NSMakeRect(50, 50, 100, 100) color:[NSColor redColor]];
        // Add the green rectangle view to the content view of the window
        [[window contentView] addSubview:redRectView];

        TextView *textView = [TextView textViewWithString:@"Hello, World!" rect:NSMakeRect(0, 0, 200, 100) font:[NSFont systemFontOfSize:24] textColor:[NSColor whiteColor] backgroundColor:[NSColor blueColor]];
        [[window contentView] addSubview:textView];
        
        // Run the application
        [application run];
    }
    return 0;
}
