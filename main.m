#import <Cocoa/Cocoa.h>
#import "Utilities/WindowInitializer/WindowInitializer.h"
#import "Utilities/AppDelegateInitializer/AppDelegateInitializer.h"
#import "Utilities/RectView/RectView.h"
#import "Utilities/TextView/TextView.h"
#import "Utilities/ButtonView/ButtonView.h"
#import "Utilities/ButtonActionHandler/ButtonActionHandler.h"
#import "Utilities/Vector2/Vector2.h"
#import "Utilities/LineView/LineView.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Create the application
        NSApplication *application = [NSApplication sharedApplication];

        // Set the application delegate
        AppDelegate *appDelegate = [[AppDelegate alloc] init];
        [application setDelegate:appDelegate];

        // Initialize the window
        NSWindow *window = [WindowInitializer initializeWindowWithRect:NSMakeRect(0, 0, 400, 400) title:@"Hello, World!"];
        
        // Create an instance of ButtonActionHandler
        /*ButtonActionHandler *actionHandler = [[ButtonActionHandler alloc] init];
        
        // Create a button view
        ButtonView *buttonView = [ButtonView buttonViewWithTitle:@"Click Me" rect:NSMakeRect(150, 125, 100, 50) backgroundColor:[NSColor redColor] titleColor:[NSColor whiteColor]];

        [buttonView setTarget:actionHandler action:@selector(generateRandomShapeForWindow:) withObject:window];
        [buttonView setEnabled:YES]; // Enable the button
        [[window contentView] addSubview:buttonView];*/

        // Create two Vector2 points for start and end
        //Vector2 *startPoint = [Vector2 vector2WithX:50 Y:50];
        Vector2 *endPoint = [Vector2 vector2WithX:400 Y:400];
        
        // Create a LineView
        LineView *lineView = [LineView lineViewWithEndPoint:endPoint];

        // Rotate the LineView by 45 degrees around the origin
        [lineView rotateLineViewWithAngle:45.0 aroundPoint:[Vector2 vector2WithX:0 Y:0]];

        // Move the LineView to the point (50, 50)
        [lineView moveLineViewToVector:[Vector2 vector2WithX:200 Y:200]]; 
        
        // Add the LineView to the window
        [window.contentView addSubview:lineView];
        
        // Run the application
        [application run];
    }
    return 0;
}
