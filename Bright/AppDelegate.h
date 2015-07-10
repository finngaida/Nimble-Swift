//
//  AppDelegate.h
//  Bright
//
//  Created by Josh Trommel on 2015-04-10.
//  Copyright (c) 2015 Intui, Inc. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate> {
    NSStatusItem *statusItem;
}
@property (weak) IBOutlet NSView *popoverView;
@property (weak) IBOutlet NSPopover *popover;
@property (weak) IBOutlet NSTextField *input;
@property (weak) IBOutlet NSTextField *output;
@property (weak) IBOutlet NSTextField *implying;

- (IBAction)showPopover:(id)sender;
- (IBAction)query:(id)sender;

@end