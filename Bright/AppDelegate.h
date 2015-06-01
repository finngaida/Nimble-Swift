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

- (IBAction)clickQuery:(id)sender;
- (IBAction)quit:(id)sender;

@end