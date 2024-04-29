#import "ShapeView.h"

@implementation ShapeView

- (instancetype)initWithVertices:(NSArray<Vector2 *> *)vertices {
    NSRect frame = [self calculateFrameForVertices:vertices];
    self = [super initWithFrame:frame];
    if (self) {
        _vertices = [vertices copy];
    }
    return self;
}

- (NSRect)calculateFrameForVertices:(NSArray<Vector2 *> *)vertices {
    CGFloat minX = CGFLOAT_MAX;
    CGFloat minY = CGFLOAT_MAX;
    CGFloat maxX = CGFLOAT_MIN;
    CGFloat maxY = CGFLOAT_MIN;
    
    for (Vector2 *vertex in vertices) {
        minX = MIN(minX, vertex.x);
        minY = MIN(minY, vertex.y);
        maxX = MAX(maxX, vertex.x);
        maxY = MAX(maxY, vertex.y);
    }
    
    return NSMakeRect(minX, minY, maxX - minX, maxY - minY);
}

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    // Drawing code here
    NSBezierPath *shapePath = [NSBezierPath bezierPath];
    
    // Move to the first vertex
    Vector2 *firstVertex = self.vertices.firstObject;
    [shapePath moveToPoint:NSMakePoint(firstVertex.x, firstVertex.y)];
    
    // Connect the vertices
    for (NSInteger i = 1; i < self.vertices.count; i++) {
        Vector2 *vertex = self.vertices[i];
        [shapePath lineToPoint:NSMakePoint(vertex.x, vertex.y)];
    }
    
    [shapePath closePath]; // Close the path
    
    // Set fill color
    if (self.fillColor) {
        [self.fillColor setFill];
        [shapePath fill];
    }
    
    // Set stroke color and width
    if (self.strokeColor) {
        [self.strokeColor setStroke];
        [shapePath setLineWidth:self.strokeWidth];
        [shapePath stroke];
    }
}

@end
