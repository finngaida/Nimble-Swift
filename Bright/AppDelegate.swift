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
    
    @IBOutlet weak var window: NSWindow!
    
    let statusItem = NSStatusBar.systemStatusBar().statusItemWithLength(-1)
    let windowController = NSWindowController()
    
    func applicationDidFinishLaunching(aNotification: NSNotification) {
        
        if let button = statusItem.button {
            statusItem.image = NSImage(named: "icon")
            statusItem.alternateImage = NSImage(named: "alt_icon")
            button.action = Selector("toggleMenu:")
        }
        
        window.setWindowController(windowController)
        window.makeMainWindow()
        
    }
    
    func toggleMenu(sender: AnyObject?) {
        println("frame: \(window.frame)")
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }

}

