#import "RectView.h"

@implementation RectView

- (instancetype)initWithRect:(NSRect)rect color:(NSColor *)color {
    self = [super initWithFrame:rect];
    if (self) {
        _color = color;
    }
    return self;
}

+ (instancetype)rectViewWithRect:(NSRect)rect color:(NSColor *)color {
    return [[self alloc] initWithRect:rect color:color];
}

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    // Draw the rectangle with the specified color
    [_color setFill];
    NSRectFill(dirtyRect);
}

@end