#import <Cocoa/Cocoa.h>
#import "WindowInitializer.h"
#import "AppDelegateInitializer.h"
#import "RectView.h"
#import "TextView.h"
#import "ButtonView.h"
#import "ButtonActionHandler.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Create the application
        NSApplication *application = [NSApplication sharedApplication];

        // Set the application delegate
        AppDelegate *appDelegate = [[AppDelegate alloc] init];
        [application setDelegate:appDelegate];

        // Initialize the window
        NSWindow *window = [WindowInitializer initializeWindowWithRect:NSMakeRect(0, 0, 400, 300) title:@"Hello, World!"];
        
        // Create an instance of ButtonActionHandler
        ButtonActionHandler *actionHandler = [[ButtonActionHandler alloc] init];
        
        // Create a button view
        ButtonView *buttonView = [ButtonView buttonViewWithTitle:@"Click Me" rect:NSMakeRect(150, 125, 100, 50) backgroundColor:[NSColor redColor] titleColor:[NSColor whiteColor]];
        [buttonView setTarget:actionHandler]; // Set the instance of ButtonActionHandler as the target
        [buttonView setAction:@selector(buttonClicked:)];
        [buttonView setEnabled:YES]; // Enable the button
        [[window contentView] addSubview:buttonView];
        
        // Run the application
        [application run];
    }
    return 0;
}
