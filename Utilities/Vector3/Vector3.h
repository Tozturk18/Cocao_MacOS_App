/**
 * @file Vector3.h
 * @author Ozgur Tuna Ozturk (tunaozturk2001@hotmail.com)
 * @brief This is the header file for the Vector3 object. 
 * This object is used to represent a 3D vector in the space.
 * @version 0.1
 * @date 2024-04-29
 * 
 * @copyright MIT Copyright (c) 2024
 * 
 */

/* --- IMPORTS --- */
#import <Foundation/Foundation.h>
/* --- End of IMPORTS --- */

/**
 * @brief This is the Vector3 object. 
 * This object is used to represent a 3D vector in the space.
 * 
 */
@interface Vector3 : NSObject

@property (nonatomic, assign) CGFloat x; // X coordinate
@property (nonatomic, assign) CGFloat y; // Y coordinate
@property (nonatomic, assign) CGFloat z; // Z coordinate

- (instancetype)initWithX:(CGFloat)x y:(CGFloat)y z:(CGFloat)z;
+ (instancetype)vector3WithX:(CGFloat)x y:(CGFloat)y z:(CGFloat)z;

@end
