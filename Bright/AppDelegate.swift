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
    var statusBarItem: NSStatusItem = NSStatusItem()
    var menu: NSMenu = NSMenu()
    var menuItem: NSMenuItem = NSMenuItem()
    
    @IBAction func showMainWindow(sender: NSStatusBarButton) {
        NSLog("Query")
    }
    
    override func awakeFromNib() {
        statusBarItem = statusBar.statusItemWithLength(-1)
        statusBarItem.menu = menu
        statusBarItem.title = "Bright"
        
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

