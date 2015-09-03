//
//  MenuViewController.swift
//  Nimble
//
//  Created by Josh Trommel on 2015-07-17.
//  Copyright (c) 2015 Bright. All rights reserved.
//

import Cocoa

class MenuViewController: NSViewController {

    @IBOutlet weak var progress: NSProgressIndicator!
    @IBOutlet weak var input: NSTextField!
    @IBOutlet weak var assumption: NSTextField!
    @IBOutlet weak var plaintext: NSTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        input.target = self
        input.action = Selector("query:")
        input.becomeFirstResponder()
        assumption.stringValue = ""
        plaintext.stringValue = ""
    }
    
    func query(sender: NSTextField?) {
        let query = sender!.stringValue
        let escapedURL = query.stringByAddingPercentEncodingWithAllowedCharacters(.URLHostAllowedCharacterSet())
        let url = NSURL(string: "https://nimble-backend.herokuapp.com/input?i=\(escapedURL!)")
        
        // Before anything happens, check to see if it's a basic math problem we can solve ourselves
        let expression = NSExpression(format:query)
        let result = expression.expressionValueWithObject(nil, context: nil) as! NSNumber
        
        if let thing = result as? Int {
            self.plaintext.stringValue = "\(result)"
        } else {
            progress.startAnimation(self)
            
            let task = NSURLSession.sharedSession().dataTaskWithURL(url!) {(data, response, error) in
                let json = JSON(data: data)
                if json["result"]["success"] == true {
                    
                    if let input = json["result"]["input"].string {
                        self.assumption.stringValue = "Assuming you meant \"\(input)\""
                    }
                    
                    if let result = json["result"]["result"]["plaintext"].string {
                        self.plaintext.stringValue  = result
                    }
                    
                } else {
                    let url = json["result"]["origin_url"]
                    self.assumption.stringValue = "Uh oh! I think your query, \"\(self.input.stringValue)\", might be invalid."
                    self.plaintext.stringValue = "You might have better luck searching it on Wolfram|Alpha: \(url)"
                    
                }
                self.progress.stopAnimation(self)
            }
            
            task.resume()

        }
        
    }
    
}
