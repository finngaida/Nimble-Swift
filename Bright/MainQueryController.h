//
//  MainQueryController.h
//  Bright
//
//  Created by Josh Trommel on 2015-05-09.
//  Copyright (c) 2015 Intui, Inc. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface MainQueryController : NSWindowController

@property (weak, nonatomic) IBOutlet NSTextField *input;
@property (weak) IBOutlet NSTextField *outputTextView;
@property (weak) IBOutlet NSButton *queryButton;

@property (weak) IBOutlet NSWindow *queryWindow;

- (IBAction)queryPress:(id)sender;

@end
