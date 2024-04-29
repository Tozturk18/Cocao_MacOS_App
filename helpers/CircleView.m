#import "CircleView.h"

@implementation CircleView

- (instancetype)initWithFrame:(NSRect)frameRect fillColor:(NSColor *)fillColor strokeColor:(NSColor *)strokeColor strokeWidth:(CGFloat)strokeWidth {
    self = [super initWithFrame:frameRect];
    if (self) {
        _fillColor = fillColor;
        _strokeColor = strokeColor;
        _strokeWidth = strokeWidth;
    }
    return self;
}

+ (instancetype)circleViewWithFrame:(NSRect)frameRect fillColor:(NSColor *)fillColor strokeColor:(NSColor *)strokeColor strokeWidth:(CGFloat)strokeWidth {
    return [[CircleView alloc] initWithFrame:frameRect fillColor:fillColor strokeColor:strokeColor strokeWidth:strokeWidth];
}

+ (instancetype)circleViewWithFrame:(NSRect)frameRect fillColor:(NSColor *)fillColor {
    return [[CircleView alloc] initWithFrame:frameRect fillColor:fillColor strokeColor:[NSColor blackColor] strokeWidth:1.0];
}

+ (instancetype)circleViewWithFrame:(NSRect)frameRect {
    return [[CircleView alloc] initWithFrame:frameRect fillColor:[NSColor whiteColor] strokeColor:[NSColor blackColor] strokeWidth:1.0];
}

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    // Drawing code here
    NSBezierPath *circlePath = [NSBezierPath bezierPath];
    [circlePath appendBezierPathWithOvalInRect:self.bounds];
    
    // Set fill color
    if (self.fillColor) {
        [self.fillColor setFill];
        [circlePath fill];
    }
    
    // Set stroke color and width
    if (self.strokeColor) {
        [self.strokeColor setStroke];
        [circlePath setLineWidth:self.strokeWidth];
        [circlePath stroke];
    }
}

@end
