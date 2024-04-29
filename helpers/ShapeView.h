#import <Cocoa/Cocoa.h>
#import "Vector2.h"

@interface ShapeView : NSView

@property (nonatomic, strong) NSColor *fillColor;    // Fill color of the shape
@property (nonatomic, strong) NSColor *strokeColor;  // Stroke color of the shape
@property (nonatomic, assign) CGFloat strokeWidth;   // Stroke width of the shape
@property (nonatomic, copy) NSArray<Vector2 *> *vertices; // Array of vertices defining the shape

- (instancetype)initWithVertices:(NSArray<Vector2 *> *)vertices;

@end
