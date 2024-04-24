#import "WindowInitializer.h"

@implementation WindowInitializer

+ (NSWindow*)initializeWindow {
    // Create the window frame
    NSRect frame = NSMakeRect(0, 0, 400, 300); // Sets the origin and size of the window

    // Create the window
    NSWindow *window = [[NSWindow alloc] initWithContentRect:frame
                            styleMask:NSWindowStyleMaskTitled | NSWindowStyleMaskClosable | NSWindowStyleMaskMiniaturizable | NSWindowStyleMaskResizable
                            backing:NSBackingStoreBuffered
                            defer:NO];

    // Set the window title
    [window setTitle:@"Hello World!"];
    // Add the window to the application
    [NSApp setWindowsMenu:[[[NSMenu alloc] init] autorelease]];
    [NSApp setMainMenu:[[[NSMenu alloc] init] autorelease]];
    [NSApp activateIgnoringOtherApps:YES];
    [window makeKeyAndOrderFront:nil];

    // Create the view
    NSView *contentView = [[NSView alloc] initWithFrame:frame];
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
