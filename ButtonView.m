#import "ButtonView.h"

@implementation ButtonView

- (instancetype)initWithTitle:(NSString *)title rect:(NSRect)rect backgroundColor:(NSColor *)backgroundColor titleColor:(NSColor *)titleColor {
    self = [super initWithFrame:rect];
    if (self) {
        [self setTitle:title];
        [self setBordered:YES]; // Button style: bordered
        [self setBezelStyle:NSBezelStyleRegularSquare]; // Button style: regular square
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

@end
