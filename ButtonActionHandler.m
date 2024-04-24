#import "ButtonActionHandler.h"
#import "RectView.h"

@implementation ButtonActionHandler

- (void)dealloc {
    NSLog(@"ButtonActionHandler deallocated");
    [super dealloc];
}

- (void)buttonClicked:(id)sender {
    NSLog(@"Button clicked!");
}

// Method to generate a random rectangle
- (void)generateRandomRectangleForWindow:(NSWindow *)window {

    NSLog(@"Generating Random Rectangles");
    NSLog(@"Window Frame: %@", NSStringFromRect(window.frame));

    CGFloat windowWidth = CGRectGetWidth(window.frame);
    CGFloat windowHeight = CGRectGetHeight(window.frame);
    
    CGFloat minX = 0;
    CGFloat minY = 0;
    CGFloat maxX = windowWidth;
    CGFloat maxY = windowHeight;
    
    CGFloat randomX = minX + arc4random_uniform(maxX - minX);
    CGFloat randomY = minY + arc4random_uniform(maxY - minY);
    
    CGFloat minWidth = 50;
    CGFloat maxWidth = 200;
    CGFloat minHeight = 50;
    CGFloat maxHeight = 200;
    
    CGFloat randomWidth = minWidth + arc4random_uniform(maxWidth - minWidth);
    CGFloat randomHeight = minHeight + arc4random_uniform(maxHeight - minHeight);
    
    NSRect randomRect = NSMakeRect(randomX, randomY, randomWidth, randomHeight);
    NSColor *randomColor = [NSColor colorWithRed:arc4random_uniform(256)/255.0 green:arc4random_uniform(256)/255.0 blue:arc4random_uniform(256)/255.0 alpha:1.0];
    
    RectView *randomRectView = [RectView rectViewWithRect:randomRect color:randomColor];
    [[window contentView] addSubview:randomRectView];
}


@end
