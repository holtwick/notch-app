#import "NotchWindow.h"

@implementation NotchWindow

- (id)initWithContentRect:(NSRect)contentRect
                styleMask:(NSWindowStyleMask)aStyle
                  backing:(NSBackingStoreType)bufferingType
                    defer:(BOOL)flag {

  // Using NSBorderlessWindowMask results in a window without a title bar.
  self = [super initWithContentRect:contentRect styleMask:NSWindowStyleMaskBorderless backing:NSBackingStoreBuffered defer:NO];
  if (self != nil) {
    // Start with no transparency for all drawing into the window
    [self setAlphaValue:1.0];
    //Set backgroundColor to clearColor
    self.backgroundColor = NSColor.clearColor;
    // Turn off opacity so that the parts of the window that are not drawn into are transparent.
    [self setOpaque:NO];
  }
  return self;
}

@end
