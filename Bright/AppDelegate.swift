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
    
    let statusItem = NSStatusBar.systemStatusBar().statusItemWithLength(-1)
    let popover = NSPopover()
    
    func applicationDidFinishLaunching(aNotification: NSNotification) {
        
        if let button = statusItem.button {
            statusItem.image = NSImage(named: "icon")
            statusItem.alternateImage = NSImage(named: "alt_icon")
            button.action = Selector("toggleMenu:")
        }
        
        popover.contentViewController = MenuViewController(nibName:"MenuViewController", bundle:nil)
        popover.behavior = NSPopoverBehavior.Transient
    }
    
    func showMenu(sender: AnyObject?) {
        if let button = statusItem.button {
            popover.showRelativeToRect(button.bounds, ofView: button, preferredEdge: NSMinYEdge)
        }
    }
    
    func closePopover(sender: AnyObject?) {
        popover.performClose(sender)
    }
    
    func toggleMenu(sender: AnyObject?) {
        if popover.shown {
            closePopover(sender)
        } else {
            showMenu(sender)
        }
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }

}

