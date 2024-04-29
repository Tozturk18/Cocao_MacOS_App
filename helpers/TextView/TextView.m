#import "TextView.h"

@implementation TextView

- (instancetype)initWithString:(NSString *)string rect:(NSRect)rect font:(NSFont *)text_font textColor:(NSColor *)text_Color backgroundColor:(NSColor *)background_Color {
    self = [super initWithFrame:rect];
    if (self) {
        [self setStringValue:string];
        [self setEditable:NO];
        [self setSelectable:NO];
        [self setBezeled:NO];
        [self setDrawsBackground:YES]; // Enable drawing of background
        [self setFont:text_font];
        [self setTextColor:text_Color];
        [self setBackgroundColor:background_Color];
    }
    return self;
}

+ (instancetype)textViewWithString:(NSString *)string rect:(NSRect)rect font:(NSFont *)text_font textColor:(NSColor *)text_Color backgroundColor:(NSColor *)background_Color{
    return [[self alloc] initWithString:string rect:rect font:text_font textColor:text_Color backgroundColor:background_Color];
}

+ (instancetype)textViewWithString:(NSString *)string rect:(NSRect)rect font:(NSFont *)text_font textColor:(NSColor *)text_Color {
    return [[self alloc] initWithString:string rect:rect font:text_font textColor:text_Color backgroundColor:[NSColor clearColor]];
}

+ (instancetype)textViewWithString:(NSString *)string rect:(NSRect)rect font:(NSFont *)text_font {
    return [[self alloc] initWithString:string rect:rect font:text_font textColor:[NSColor blackColor] backgroundColor:[NSColor clearColor]];
}

+ (instancetype)textViewWithString:(NSString *)string rect:(NSRect)rect {
    return [[self alloc] initWithString:string rect:rect font:[NSFont systemFontOfSize:12] textColor:[NSColor blackColor] backgroundColor:[NSColor clearColor]];
}

+ (instancetype)textViewWithString:(NSString *)string {
    return [[self alloc] initWithString:string rect:NSMakeRect(0, 0, 100, 100) font:[NSFont systemFontOfSize:12] textColor:[NSColor blackColor] backgroundColor:[NSColor clearColor]];
}

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    // Draw background color
    [self.backgroundColor set];
    //NSRectFill(dirtyRect);
}

@end
