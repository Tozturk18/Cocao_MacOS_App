#import <Foundation/Foundation.h>

@interface Vector2 : NSObject

@property (nonatomic, assign) CGFloat x; // X coordinate
@property (nonatomic, assign) CGFloat y; // Y coordinate

- (instancetype)initWithX:(CGFloat)x y:(CGFloat)y;
+ (NSArray<Vector2 *> *)verticesFromArray:(NSArray<NSValue *> *)array;

@end
