#import "ButtonActionHandler.h"

@implementation ButtonActionHandler

- (void)dealloc {
    NSLog(@"ButtonActionHandler deallocated");
    [super dealloc];
}

- (void)buttonClicked:(id)sender {
    NSLog(@"Button clicked!");
}

@end
