#import "ButtonActionHandler.h"
#import "RectView.h"
#import "CircleView.h"
#import "PolygonView.h"

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

    NSLog(@"Generating a Random Rectangle");
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

// Method to generate a random Circle
- (void)generateRandomCircleForWindow:(NSWindow *)window {

    NSLog(@"Generating a Random Circle");
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
    
    CircleView *randomCircleView = [CircleView circleViewWithFrame:randomRect fillColor:randomColor];
    [[window contentView] addSubview:randomCircleView];
}

// Method to generate a random Polygon
- (void)generateRandomPolygonForWindow:(NSWindow *)window {

    NSLog(@"Generating a Random Polygon");
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
    
    CGFloat randomSides = 3 + arc4random_uniform(8);

    PolygonView *randomPolygon = [PolygonView polygonViewWithFrame:randomRect sides:randomSides fillColor:randomColor];
    [[window contentView] addSubview:randomPolygon];
}


@end
