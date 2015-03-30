//
//  AppDelegate.swift
//  Bright
//
//  Created by Josh Trommel on 2015-03-29.
//  Copyright (c) 2015 Intui, Inc. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!
    @IBOutlet weak var menu: NSMenu!
    
    let statusItem = NSStatusBar.systemStatusBar().statusItemWithLength(-1)

    func applicationDidFinishLaunching(aNotification: NSNotification) {
        let icon = NSImage(named: "statusIcon")
        icon?.setTemplate(true)
        
        statusItem.image = icon
        statusItem.menu = menu
    }
    
    @IBAction func queryClicked(sender: NSMenuItem) {
        println("working up to now")
    }

}

