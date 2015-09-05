//
//  AboutController.swift
//  Nimble
//
//  Created by Josh Trommel on 2015-09-05.
//  Copyright (c) 2015 Bright. All rights reserved.
//

import Cocoa

class AboutController: NSWindowController {
    
    @IBOutlet var aboutWindow: NSWindow!
    @IBOutlet weak var versionMessage: NSTextField!
    
    override func awakeFromNib() {
        if let version = NSBundle.mainBundle().infoDictionary?["CFBundleShortVersionString"] as? String {
            self.versionMessage.stringValue = "Nimble version \(version)"
        }
    }
    override func windowDidLoad() {
        super.windowDidLoad()
    
        // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
    }
    
    @IBAction func openGithubRepo(sender: NSButton) {
        let url = NSURL(string: "https://github.com/madebybright/nimble")
        NSWorkspace.sharedWorkspace().openURL(url!)
    }

}
