#import <Cocoa/Cocoa.h>

@interface RectView : NSView

@property (nonatomic, strong) NSColor *color;

- (instancetype)initWithRect:(NSRect)rect color:(NSColor *)color;
+ (instancetype)rectViewWithRect:(NSRect)rect color:(NSColor *)color;

@end
