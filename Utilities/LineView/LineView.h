/**
 * @file LineView.h
 * @author your name (you@domain.com)
 * @brief 
 * @version 0.1
 * @date 2024-04-29
 * 
 * @copyright Copyright (c) 2024
 * 
 */

#import <Cocoa/Cocoa.h>
#import "../Vector2/Vector2.h"

@interface LineView : NSView

/* MARK: - Properties */
@property (nonatomic, strong) Vector2 *startPoint;
@property (nonatomic, strong) Vector2 *endPoint;
@property (nonatomic, strong) NSColor *strokeColor;
@property (nonatomic, assign) CGFloat strokeWidth;
@property (nonatomic, assign) CGFloat rotation; // Rotation angle in degrees
@property (nonatomic, assign) Vector2 *centerPoint;

/* MARK: - Methods */
- (instancetype)initWithStartPoint:(Vector2 *)startPoint endPoint:(Vector2 *)endPoint strokeColor:(NSColor *)strokeColor strokeWidth:(CGFloat)strokeWidth;

- (void)rotateLineViewWithAngle:(CGFloat)rotation aroundPoint:(Vector2 *)centerPoint;
- (void)rotateLineViewWithAngle:(CGFloat)rotation;

- (void)moveLineViewWithVector:(Vector2 *)vector;
- (void)moveLineViewToVector:(Vector2 *)vector;

+ (instancetype)lineViewWithStartPoint:(Vector2 *)startPoint endPoint:(Vector2 *)endPoint strokeColor:(NSColor *)strokeColor strokeWidth:(CGFloat)strokeWidth;
+ (instancetype)lineViewWithStartPoint:(Vector2 *)startPoint endPoint:(Vector2 *)endPoint;
+ (instancetype)lineViewWithEndPoint:(Vector2 *)endPoint strokeColor:(NSColor *)strokeColor strokeWidth:(CGFloat)strokeWidth;
+ (instancetype)lineViewWithEndPoint:(Vector2 *)endPoint;

@end
