//
//  MenuViewController.swift
//  Bright
//
//  Created by Josh Trommel on 2015-07-17.
//  Copyright (c) 2015 Intui. All rights reserved.
//

import Cocoa

class MenuViewController: NSViewController {

    @IBOutlet weak var input: NSTextField!
    @IBOutlet weak var plaintext: NSTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        input.target = self
        input.action = Selector("query:")
        input.becomeFirstResponder()
    }
    
    func query(sender: NSTextField?) {
        let query = sender!.stringValue
        let escapedURL = query.stringByAddingPercentEncodingWithAllowedCharacters(.URLHostAllowedCharacterSet())
        
        let url = NSURL(string: "https://bright-backend.herokuapp.com/input?i=\(escapedURL!)")
        
        let task = NSURLSession.sharedSession().dataTaskWithURL(url!) {(data, response, error) in
            println(NSString(data: data, encoding: NSUTF8StringEncoding)!)
        }
        
        task.resume()
    }
    
}
