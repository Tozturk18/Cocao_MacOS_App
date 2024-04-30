#import <Cocoa/Cocoa.h>

@interface PolygonView : NSView

/* MARK: - Properties */
@property (nonatomic, strong) NSColor *fillColor;    // Fill color of the polygon
@property (nonatomic, strong) NSColor *strokeColor;  // Stroke color of the polygon
@property (nonatomic, assign) CGFloat strokeWidth;   // Stroke width of the polygon
@property (nonatomic, assign) NSInteger sides;       // Number of sides of the polygon

/* MARK: - Methods */
// Initialize the polygon view with frame, number of sides, fill color, stroke color, and stroke width
- (instancetype)initWithFrame:(NSRect)frameRect sides:(NSInteger)sides fillColor:(NSColor *)fillColor strokeColor:(NSColor *)strokeColor strokeWidth:(CGFloat)strokeWidth;

+ (instancetype)polygonViewWithFrame:(NSRect)frameRect sides:(NSInteger)sides fillColor:(NSColor *)fillColor strokeColor:(NSColor *)strokeColor strokeWidth:(CGFloat)strokeWidth;

+ (instancetype)polygonViewWithFrame:(NSRect)frameRect sides:(NSInteger)sides fillColor:(NSColor *)fillColor;

+ (instancetype)polygonViewWithFrame:(NSRect)frameRect sides:(NSInteger)sides;

@end
