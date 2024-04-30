#import <Foundation/Foundation.h>

@interface Vector2 : NSObject

@property (nonatomic, assign) CGFloat x; // X coordinate
@property (nonatomic, assign) CGFloat y; // Y coordinate

- (instancetype)initWithX:(CGFloat)x Y:(CGFloat)y;
+ (instancetype)vector2WithX:(CGFloat)x Y:(CGFloat)y;

+ (NSArray<Vector2 *> *)verticesFromArray:(NSArray<NSValue *> *)array;

@end
