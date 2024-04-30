#import <Cocoa/Cocoa.h>

@interface ButtonView : NSButton

/* MARK: - Properties */
@property (nonatomic, strong)   NSColor     *backgroundColor;           // Background color of the button
@property (nonatomic, strong)   NSColor     *previousBackgroundColor;   // Previous background color of the button
@property (nonatomic, strong)   NSColor     *hoverBackgroundColor;      // Hover background color of the button

@property (nonatomic, strong)   NSColor     *titleColor;                // Title color of the button
@property (nonatomic, strong)   NSColor     *previousTitleColor;        // Previous title color of the button
@property (nonatomic, strong)   NSColor     *hoverTitleColor;           // Hover title color of the button
@property (nonatomic, strong)   NSFont      *prevTitle;                 // Previous title text of the button

@property (nonatomic, strong)   NSColor     *borderColor;               // Border color of the button
@property (nonatomic, strong)   NSColor     *previousBorderColor;       // Previous border color of the button
@property (nonatomic, strong)   NSColor     *hoverBorderColor;          // Hover border color of the button
@property (nonatomic, assign)   CGFloat     borderWidth;                // Border width of the button

@property (nonatomic, assign)   id          button_target;              // Target of the button
@property (nonatomic, assign)   SEL         button_action;              // Action of the button
@property (nonatomic, assign)   NSObject    *object;                    // Object to pass to button action

//@property (nonatomic, weak) id<ButtonActionHandler> actionHandler;


/* MARK: - Methods */
// Private Constructor
- (instancetype)initWithTitle:(NSString *)title rect:(NSRect)rect backgroundColor:(NSColor *)backgroundColor titleColor:(NSColor *)titleColor;

- (void)setTarget:(id)button_target action:(SEL)button_action withObject:(NSObject *)object;

// Initialize the button with title, rect, background color, and title color
+ (instancetype)buttonViewWithTitle:(NSString *)title rect:(NSRect)rect backgroundColor:(NSColor *)backgroundColor titleColor:(NSColor *)titleColor;
// Initialize the button with title, rect, background color, and default title color
+ (instancetype)buttonViewWithTitle:(NSString *)title rect:(NSRect)rect backgroundColor:(NSColor *)backgroundColor;
// Initialize the button with title, rect, default background color, and default title color
+ (instancetype)buttonViewWithTitle:(NSString *)title rect:(NSRect)rect;

@end
