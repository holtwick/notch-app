//
//  AppDelegate.m
//  Notch
//
//  Created by Dirk Holtwick on 20.10.21.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@property (strong) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
  // Insert code here to initialize your application
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
  // Insert code here to tear down your application
}


- (BOOL)applicationSupportsSecureRestorableState:(NSApplication *)app {
  return YES;
}

- (void)awakeFromNib {
  [self.window setLevel:NSMainMenuWindowLevel + 1];
}

- (IBAction)doNotch:(id)sender {
  [NSWorkspace.sharedWorkspace openURL:[NSURL URLWithString:@"https://holtwick.de/notch"]];
}

@end
