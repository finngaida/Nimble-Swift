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

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    
    #pragma GCC diagnostic ignored "-Wundeclared-selector"
    
    NSMenu *menu = [[NSMenu alloc] init];
    
    NSMenuItem *query = [[NSMenuItem alloc] initWithTitle:@"What's the Size of the Atlantic Ocean?" action:@selector(query) keyEquivalent:@""];
    NSMenuItem *exit = [[NSMenuItem alloc] initWithTitle:@"Exit" action:@selector(exit) keyEquivalent:@""];
    
    NSTextField *textField = [[NSTextField alloc] initWithFrame:CGRectZero];
    
    query.view = textField;
    
    [menu addItem:query];
    [menu addItem:[NSMenuItem separatorItem]];
    [menu addItem:exit];
    
    statusItem = [[NSStatusBar systemStatusBar] statusItemWithLength:NSVariableStatusItemLength];
    [statusItem setTitle:@""];
    [statusItem setImage:[NSImage imageNamed:@"statusIcon"]];
    [statusItem setAlternateImage:[NSImage imageNamed:@"altStatusIcon"]];
    [statusItem setHighlightMode:YES];
    [statusItem setMenu: menu];
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