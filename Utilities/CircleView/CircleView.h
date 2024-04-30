#import <Cocoa/Cocoa.h>

@interface CircleView : NSView

/* MARK: - Properties */
@property (nonatomic, strong) NSColor *fillColor;    // Fill color of the circle
@property (nonatomic, strong) NSColor *strokeColor;  // Stroke color of the circle
@property (nonatomic, assign) CGFloat strokeWidth;   // Stroke width of the circle

/* MARK: - Methods */
// Initialize the circle view with frame, fill color, stroke color, and stroke width
- (instancetype)initWithFrame:(NSRect)frameRect fillColor:(NSColor *)fillColor strokeColor:(NSColor *)strokeColor strokeWidth:(CGFloat)strokeWidth;

+ (instancetype)circleViewWithFrame:(NSRect)frameRect fillColor:(NSColor *)fillColor strokeColor:(NSColor *)strokeColor strokeWidth:(CGFloat)strokeWidth;
+ (instancetype)circleViewWithFrame:(NSRect)frameRect fillColor:(NSColor *)fillColor;
+ (instancetype)circleViewWithFrame:(NSRect)frameRect;

@end
