#import <Cocoa/Cocoa.h>

@interface ButtonView : NSButton

@property (nonatomic, strong) NSColor *backgroundColor;
@property (nonatomic, strong) NSColor *titleColor;

- (instancetype)initWithTitle:(NSString *)title rect:(NSRect)rect backgroundColor:(NSColor *)backgroundColor titleColor:(NSColor *)titleColor;

+ (instancetype)buttonViewWithTitle:(NSString *)title rect:(NSRect)rect backgroundColor:(NSColor *)backgroundColor titleColor:(NSColor *)titleColor;
+ (instancetype)buttonViewWithTitle:(NSString *)title rect:(NSRect)rect backgroundColor:(NSColor *)backgroundColor;
+ (instancetype)buttonViewWithTitle:(NSString *)title rect:(NSRect)rect;

@end
