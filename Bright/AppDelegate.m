//
//  AppDelegate.m
//  Bright
//
//  Created by Josh Trommel on 2015-04-10.
//  Copyright (c) 2015 Intui, Inc. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

@synthesize window  = _window;
@synthesize popover = _popover;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    
    [_queryButton setKeyEquivalent:@"\r"];
    
    statusItem = [[NSStatusBar systemStatusBar] statusItemWithLength:NSVariableStatusItemLength];
    [statusItem setTitle:@""];
    [statusItem setImage:[NSImage imageNamed:@"statusIcon"]];
    [statusItem setAlternateImage:[NSImage imageNamed:@"altStatusIcon"]];
    [statusItem setHighlightMode:YES];
    
    [statusItem setTarget:self];
    [statusItem setAction:@selector(showPopover:)];
}

- (IBAction)showPopover:(id)sender {
    [_popover showRelativeToRect:[sender bounds] ofView:sender preferredEdge:NSMaxXEdge];
}

- (IBAction)tempMakeQuery:(id)sender {
    NSString *input = [_input stringValue];
    NSString* urlString = [[NSString stringWithFormat:@"https://bright-backend.herokuapp.com/input?i=%@", input] stringByAddingPercentEscapesUsingEncoding : NSUTF8StringEncoding];
    NSLog(@"%@", urlString);

}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

- (IBAction)clickQuery:(id)sender {
    // open query window (for now)
}

- (IBAction)quit:(id)sender {
    [NSApp terminate: self];
}

@end