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
@property (weak) IBOutlet NSScrollView *outputTextView;

- (IBAction)queryPress:(id)sender;

@end
