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
    
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:@"https://bright-backend.herokuapp.com/input?i=define+smooth"]];
    NSData *response = [NSURLConnection sendSynchronousRequest:request returningResponse:nil error:nil];
    NSError *jsonParsingError = nil;
    NSDictionary *jsonResponse = [NSJSONSerialization JSONObjectWithData:response
                                                            options:0 error:&jsonParsingError];
    
    NSDictionary *result = [jsonResponse valueForKeyPath:@"result"];
    NSDictionary *success = [result valueForKeyPath:@"success"];
    
    NSLog(@"Did things work? 0 means no, 1 means yes. Result: %@", success);
}

- (IBAction)quit:(id)sender {
    [NSApp terminate: self];
}

@end