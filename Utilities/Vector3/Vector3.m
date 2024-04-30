/**
 * @file Vector3.m
 * @author Ozgur Tuna Ozturk (tunaozturk2001@hotmail.com)
 * @brief This is the implementation file of the Vector3 class.
 * This class is used to represent 3D vectors. This class has 3 methods,
 * first two of them are for initialization and the other one is a class method that
 * creates an array of Vector3 objects from an array of NSValue objects.
 * @version 0.1
 * @date 2024-04-29
 * 
 * @copyright MIT Copyright (c) 2024
 * 
 */

#import "Vector3.h"

@implementation Vector3

- (instancetype)initWithX:(CGFloat)x y:(CGFloat)y z:(CGFloat)z {
    self = [super init];
    if (self) {
        _x = x;
        _y = y;
        _z = z;
    }
    return self;
}

+ (instancetype)vector3WithX:(CGFloat)x y:(CGFloat)y z:(CGFloat)z {
    return [[Vector3 alloc] initWithX:x y:y z:z];
}

@end