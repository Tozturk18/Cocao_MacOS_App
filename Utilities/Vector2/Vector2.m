#import "Vector2.h"

@implementation Vector2

- (instancetype)initWithX:(CGFloat)x y:(CGFloat)y {
    self = [super init];
    if (self) {
        _x = x;
        _y = y;
    }
    return self;
}

+ (NSArray<Vector2 *> *)verticesFromArray:(NSArray<NSValue *> *)array {
    NSMutableArray<Vector2 *> *vertices = [NSMutableArray arrayWithCapacity:array.count];
    for (NSValue *value in array) {
        CGPoint point = [value pointValue];
        Vector2 *vertex = [[Vector2 alloc] initWithX:point.x y:point.y];
        [vertices addObject:vertex];
    }
    return [vertices copy];
}

@end
