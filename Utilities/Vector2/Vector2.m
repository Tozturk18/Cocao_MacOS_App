#import "Vector2.h"

@implementation Vector2

- (instancetype)initWithX:(CGFloat)x Y:(CGFloat)y {
    self = [super init];
    if (self) {
        _x = x;
        _y = y;
    }
    return self;
}

+ (instancetype)vector2WithX:(CGFloat)x Y:(CGFloat)y {
    return [[Vector2 alloc] initWithX:x Y:y];
}

+ (NSArray<Vector2 *> *)verticesFromArray:(NSArray<NSValue *> *)array {
    NSMutableArray<Vector2 *> *vertices = [NSMutableArray arrayWithCapacity:array.count];
    for (NSValue *value in array) {
        CGPoint point = [value pointValue];
        Vector2 *vertex = [[Vector2 alloc] initWithX:point.x Y:point.y];
        [vertices addObject:vertex];
    }
    return [vertices copy];
}

- (instancetype)add:(Vector2 *)vector {
    return [[Vector2 alloc] initWithX:self.x + vector.x Y:self.y + vector.y];
}

- (instancetype)subtract:(Vector2 *)vector {
    return [[Vector2 alloc] initWithX:self.x - vector.x Y:self.y - vector.y];
}

@end
