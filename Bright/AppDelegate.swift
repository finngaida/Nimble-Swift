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
    
    var statusBar = NSStatusBar.systemStatusBar()
    var statusBarItem = NSStatusItem()
    var menu = NSMenu()
    var menuItem = NSMenuItem()
    
    @IBAction func showMainWindow(sender: NSStatusBarButton) {
        NSLog("Query")
    }
    
    override func awakeFromNib() {
        statusBarItem = statusBar.statusItemWithLength(-2)
        statusBarItem.menu = menu
        statusBarItem.title = ""
        if let button = statusBarItem.button {
            NSLog("test")
            button.image = NSImage(named: "image")
            button.alternateImage = NSImage(named: "alt_image")
            button.action = Selector("showMainWindow:")
        }
        
        menuItem.action = Selector("showMainWindow:")
        menuItem.title = "Query"
        menuItem.keyEquivalent = ""
        menu.addItem(menuItem)
    }


    func applicationDidFinishLaunching(aNotification: NSNotification) {
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }


}

