#import "ButtonView.h"

@implementation ButtonView

- (instancetype)initWithTitle:(NSString *)title rect:(NSRect)rect backgroundColor:(NSColor *)backgroundColor titleColor:(NSColor *)titleColor {
    self = [super initWithFrame:rect];
    if (self) {
        [self setTitle:title];
        [self setBezelStyle:NSBezelStyleRegularSquare]; // Set button style: regular square
        [self setButtonType:NSButtonTypeMomentaryPushIn]; // Set button type: momentary push-in
        [self setShowsBorderOnlyWhileMouseInside:YES]; // Show border only when mouse inside button
        [self setBordered:YES]; // Set bordered style
        [self setBackgroundColor:backgroundColor];
        [self setTitleColor:titleColor];
    }
    return self;
}

+ (instancetype)buttonViewWithTitle:(NSString *)title rect:(NSRect)rect backgroundColor:(NSColor *)backgroundColor titleColor:(NSColor *)titleColor {
    return [[ButtonView alloc] initWithTitle:title rect:rect backgroundColor:backgroundColor titleColor:titleColor];
}

+ (instancetype)buttonViewWithTitle:(NSString *)title rect:(NSRect)rect backgroundColor:(NSColor *)backgroundColor {
    return [[ButtonView alloc] initWithTitle:title rect:rect backgroundColor:backgroundColor titleColor:[NSColor blackColor]];
}

+ (instancetype)buttonViewWithTitle:(NSString *)title rect:(NSRect)rect {
    return [[ButtonView alloc] initWithTitle:title rect:rect backgroundColor:[NSColor whiteColor] titleColor:[NSColor blackColor]];
}

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    // Draw background color
    if (self.backgroundColor) {
        [self.backgroundColor set];
        NSRectFill(self.bounds);
    }
    
    // Draw title color
    if (self.titleColor) {
        NSDictionary *attributes = @{NSForegroundColorAttributeName: self.titleColor};
        NSAttributedString *attributedTitle = [[NSAttributedString alloc] initWithString:self.title attributes:attributes];
        [self.attributedTitle drawInRect:self.bounds];
    }
}

- (void)setTarget:(id)button_target action:(SEL)button_action withObject:(NSObject *)object; {
    self.button_target = button_target;
    self.button_action = button_action;
    self.object = object;
}

- (void)mouseDown:(NSEvent *)event {
    // Change background color when the button is clicked
    self.backgroundColor = [NSColor blueColor]; // Set the desired color
    self.title = @"Clicked!";
    
    // Redraw the button
    [self setNeedsDisplay:YES];

    // Call the target-action method
    if (self.button_target && self.button_action && [self.button_target respondsToSelector:self.button_action]) {
        [self.button_target performSelector:self.button_action withObject:self.object];
    }
    
    // Call the super method to handle the default behavior
    //[super mouseDown:event];
}

- (void)mouseUp:(NSEvent *)event {
    // Reset the background color when the mouse button is released
    self.backgroundColor = [NSColor redColor]; // Set the initial color
    self.title = @"Click Me!";
    
    // Redraw the button
    [self setNeedsDisplay:YES];
    
    // Call the super method to handle the default behavior
    [super mouseUp:event];
}

- (void)updateCursorForMouseEntered:(BOOL)entered {
    if (entered) {
        // Set cursor to pointing hand when mouse enters
        NSCursor *pointingHandCursor = [NSCursor pointingHandCursor];
        [pointingHandCursor set];
    } else {
        // Reset cursor to arrow when mouse exits
        [[NSCursor arrowCursor] set];
    }
}

- (void)mouseEntered:(NSEvent *)event {
    // Change background color when mouse enters the button
    self.backgroundColor = [NSColor purpleColor]; // Set the desired hover color
    self.title = @"Mouse entered!";

    // Update cursor to pointing hand
    [self updateCursorForMouseEntered:YES];

    // Redraw the button
    [self setNeedsDisplay:YES];
    
    // Call the super method to handle the default behavior
    [super mouseEntered:event];
}

- (void)mouseExited:(NSEvent *)event {
    // Reset the background color when mouse exits the button
    self.backgroundColor = [NSColor redColor]; // Set the initial color
    self.title = @"Click Me!";

    // Update cursor to arrow
    [self updateCursorForMouseEntered:NO];
    
    // Redraw the button
    [self setNeedsDisplay:YES];
    
    // Call the super method to handle the default behavior
    [super mouseExited:event];
}

- (void)viewDidMoveToSuperview {
    [super viewDidMoveToSuperview];
    
    if (self.superview) {
        NSTrackingArea *trackingArea = [[NSTrackingArea alloc] initWithRect:self.bounds
                                                                    options:(NSTrackingMouseEnteredAndExited | NSTrackingActiveAlways)
                                                                      owner:self
                                                                   userInfo:nil];
        [self addTrackingArea:trackingArea];
    }
}

@end
