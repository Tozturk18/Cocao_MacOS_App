#import "RedSquareView.h"

@implementation RedSquareView

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    // Draw a red square
    NSRect squareRect = NSMakeRect(50, 50, 100, 100); // Set the position and size of the square
    // Create a path for the square
    NSBezierPath *squarePath = [NSBezierPath bezierPathWithRect:squareRect];
    // Set the fill color to red
    [[NSColor redColor] setFill];
    // Fill the square with the red color
    [squarePath fill];
}

@end
