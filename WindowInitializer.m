#import "WindowInitializer.h"

@implementation WindowInitializer

+ (NSWindow*)initializeWindowWithRect:(NSRect)rect title:(NSString*)title {
    // Create the window frame
    //NSRect frame = NSMakeRect(0, 0, 400, 300); // Sets the origin and size of the window

    // Create the window
    NSWindow *window = [[NSWindow alloc] initWithContentRect:rect
                            styleMask:NSWindowStyleMaskTitled | NSWindowStyleMaskClosable | NSWindowStyleMaskMiniaturizable | NSWindowStyleMaskResizable
                            backing:NSBackingStoreBuffered
                            defer:NO];

    // Set the window title
    [window setTitle:title];
    // Add the window to the application
    [NSApp setWindowsMenu:[[[NSMenu alloc] init] autorelease]];
    [NSApp setMainMenu:[[[NSMenu alloc] init] autorelease]];
    [NSApp activateIgnoringOtherApps:YES];
    [window makeKeyAndOrderFront:nil];

    // Create the view
    NSView *contentView = [[NSView alloc] initWithFrame:rect];
    [window setContentView:contentView];

    // Create the menu bar
    NSMenu *menuBar = [[NSMenu alloc] init];

    // Create the application menu
    NSMenuItem *appMenuItem = [[NSMenuItem alloc] init];
    [menuBar addItem:appMenuItem];
    [NSApp setMainMenu:menuBar];

    NSMenu *appMenu = [[NSMenu alloc] initWithTitle:@"test"];
    NSMenuItem *quitMenuItem = [[NSMenuItem alloc] initWithTitle:@"Quit test" action:@selector(terminate:) keyEquivalent:@"q"];
    [appMenu addItem:quitMenuItem];
    [appMenuItem setSubmenu:appMenu];

    // Add the window to the application
    [NSApp activateIgnoringOtherApps:YES];
    [window makeKeyAndOrderFront:nil];

    return window;
}

@end
