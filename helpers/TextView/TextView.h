#import <Cocoa/Cocoa.h>

@interface TextView : NSTextField

@property (nonatomic, strong) NSFont *text_font;
@property (nonatomic, strong) NSColor *text_Color;
@property (nonatomic, strong) NSColor *background_Color;

- (instancetype)initWithString:(NSString *)string rect:(NSRect)rect font:(NSFont *)text_font textColor:(NSColor *)text_Color backgroundColor:(NSColor *)background_Color;

+ (instancetype)textViewWithString:(NSString *)string rect:(NSRect)rect font:(NSFont *)text_font textColor:(NSColor *)text_Color backgroundColor:(NSColor *)background_Color;
+ (instancetype)textViewWithString:(NSString *)string rect:(NSRect)rect font:(NSFont *)text_font textColor:(NSColor *)text_Color;
+ (instancetype)textViewWithString:(NSString *)string rect:(NSRect)rect font:(NSFont *)text_font;
+ (instancetype)textViewWithString:(NSString *)string rect:(NSRect)rect;
+ (instancetype)textViewWithString:(NSString *)string;

@end
