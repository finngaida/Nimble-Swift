//
//  AppDelegate.swift
//  Bright
//
//  Created by Josh Trommel on 2015-07-17.
//  Copyright (c) 2015 Intui. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    
    let popover = NSPopover()
    let statusItem = NSStatusBar.systemStatusBar().statusItemWithLength(-1)
    
    func applicationDidFinishLaunching(aNotification: NSNotification) {
        
        if let button = statusItem.button {
            statusItem.image = NSImage(named: "icon")
            statusItem.alternateImage = NSImage(named: "alt_icon")
            button.action = Selector("toggleMainMenu:")
        }
    }
    
    func toggleMainMenu(sender: AnyObject?) {
        println("fuck")
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }

}

