#import "LineView.h"

@implementation LineView

- (instancetype)initWithStartPoint:(Vector2 *)startPoint endPoint:(Vector2 *)endPoint strokeColor:(NSColor *)strokeColor strokeWidth:(CGFloat)strokeWidth {
    self = [super initWithFrame:[self calculateFrameForStartPoint:startPoint endPoint:endPoint]];
    if (self) {
        _startPoint = startPoint;
        _endPoint = endPoint;
        _strokeColor = strokeColor;
        _strokeWidth = strokeWidth;
    }
    return self;
}

+ (instancetype)lineViewWithStartPoint:(Vector2 *)startPoint endPoint:(Vector2 *)endPoint strokeColor:(NSColor *)strokeColor strokeWidth:(CGFloat)strokeWidth {
    return [[LineView alloc] initWithStartPoint:startPoint endPoint:endPoint strokeColor:strokeColor strokeWidth:strokeWidth];

}

+ (instancetype)lineViewWithStartPoint:(Vector2 *)startPoint endPoint:(Vector2 *)endPoint {
    return [[LineView alloc] initWithStartPoint:startPoint endPoint:endPoint strokeColor:[NSColor redColor] strokeWidth:1.0];

}

+ (instancetype)lineViewWithEndPoint:(Vector2 *)endPoint strokeColor:(NSColor *)strokeColor strokeWidth:(CGFloat)strokeWidth {
    return [[LineView alloc] initWithStartPoint:[Vector2 vector2WithX:0 Y:0] endPoint:endPoint strokeColor:strokeColor strokeWidth:strokeWidth];

}

+ (instancetype)lineViewWithEndPoint:(Vector2 *)endPoint {
    return [[LineView alloc] initWithStartPoint:[Vector2 vector2WithX:0 Y:0] endPoint:endPoint strokeColor:[NSColor redColor] strokeWidth:1.0];
}

- (NSRect)calculateFrameForStartPoint:(Vector2 *)startPoint endPoint:(Vector2 *)endPoint {
    CGFloat minX = MIN(startPoint.x, endPoint.x);
    CGFloat minY = MIN(startPoint.y, endPoint.y);
    CGFloat maxX = MAX(startPoint.x, endPoint.x);
    CGFloat maxY = MAX(startPoint.y, endPoint.y);
    
    return NSMakeRect(minX, minY, maxX - minX, maxY - minY);
}

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    // Draw the line
    NSBezierPath *linePath = [NSBezierPath bezierPath];
    [linePath moveToPoint:NSMakePoint(self.startPoint.x, self.startPoint.y)];
    [linePath lineToPoint:NSMakePoint(self.endPoint.x, self.endPoint.y)];
    
    // Set stroke color and width
    [self.strokeColor setStroke];
    [linePath setLineWidth:self.strokeWidth];
    
    // Draw the line
    [linePath stroke];
}

@end
