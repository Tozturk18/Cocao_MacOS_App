#import "PolygonView.h"
#import <math.h>

@implementation PolygonView

- (instancetype)initWithFrame:(NSRect)frameRect sides:(NSInteger)sides fillColor:(NSColor *)fillColor strokeColor:(NSColor *)strokeColor strokeWidth:(CGFloat)strokeWidth {
    self = [super initWithFrame:frameRect];
    if (self) {
        _sides = sides;
        _fillColor = fillColor;
        _strokeColor = strokeColor;
        _strokeWidth = strokeWidth;
    }
    return self;
}

+ (instancetype)polygonViewWithFrame:(NSRect)frameRect sides:(NSInteger)sides fillColor:(NSColor *)fillColor strokeColor:(NSColor *)strokeColor strokeWidth:(CGFloat)strokeWidth {
    return [[PolygonView alloc] initWithFrame:frameRect sides:sides fillColor:fillColor strokeColor:strokeColor strokeWidth:strokeWidth];
}

+ (instancetype)polygonViewWithFrame:(NSRect)frameRect sides:(NSInteger)sides fillColor:(NSColor *)fillColor {
    return [[PolygonView alloc] initWithFrame:frameRect sides:sides fillColor:fillColor strokeColor:nil strokeWidth:0.0];
}

+ (instancetype)polygonViewWithFrame:(NSRect)frameRect sides:(NSInteger)sides {
    return [[PolygonView alloc] initWithFrame:frameRect sides:sides fillColor:[NSColor whiteColor] strokeColor:nil strokeWidth:0.0];
}

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    // Drawing code here
    NSBezierPath *polygonPath = [NSBezierPath bezierPath];
    
    // Calculate polygon vertices
    CGFloat centerX = NSMidX(self.bounds);
    CGFloat centerY = NSMidY(self.bounds);
    CGFloat radius = MIN(NSWidth(self.bounds), NSHeight(self.bounds)) / 2.0;
    CGFloat angleOffset = -M_PI_2; // Start from the top
    
    for (NSInteger i = 0; i < self.sides; i++) {
        CGFloat angle = angleOffset + (2 * M_PI * i) / self.sides;
        CGFloat x = centerX + radius * cos(angle);
        CGFloat y = centerY + radius * sin(angle);
        
        if (i == 0) {
            [polygonPath moveToPoint:NSMakePoint(x, y)];
        } else {
            [polygonPath lineToPoint:NSMakePoint(x, y)];
        }
    }
    [polygonPath closePath]; // Connect the last point to the first point to close the polygon
    
    // Set fill color
    if (self.fillColor) {
        [self.fillColor setFill];
        [polygonPath fill];
    }
    
    // Set stroke color and width
    if (self.strokeColor) {
        [self.strokeColor setStroke];
        [polygonPath setLineWidth:self.strokeWidth];
        [polygonPath stroke];
    }
}

@end
