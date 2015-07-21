//
//  MenuViewController.swift
//  Nimble
//
//  Created by Josh Trommel on 2015-07-17.
//  Copyright (c) 2015 Bright. All rights reserved.
//

import Cocoa

class MenuViewController: NSViewController {

    @IBOutlet weak var input: NSTextField!
    @IBOutlet weak var assumption: NSTextField!
    @IBOutlet weak var plaintext: NSTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        input.target = self
        input.action = Selector("query:")
        input.becomeFirstResponder()
        assumption.stringValue = ""
        assumption.selectable = true
        plaintext.selectable = true
        plaintext.stringValue = ""
    }
    
    func query(sender: NSTextField?) {
        let query = sender!.stringValue
        let escapedURL = query.stringByAddingPercentEncodingWithAllowedCharacters(.URLHostAllowedCharacterSet())
        
        let url = NSURL(string: "https://bright-backend.herokuapp.com/input?i=\(escapedURL!)")
        
        let task = NSURLSession.sharedSession().dataTaskWithURL(url!) {(data, response, error) in
            let json = JSON(data: data)
            if json["result"]["success"] == true {
                
                if let input = json["result"]["input"].string {
                    self.assumption.stringValue = "\"\(input)\""
                }
                
                if let result = json["result"]["result"]["plaintext"].string {
                    self.plaintext.stringValue  = result
                }
                
            } else {
                let badYiff = "do NOT sign me the FUCK up 👎🐺👎🐺👎🐺👎🐺👎🐺 bad shit ba̷̶ ԁ " + "sHit 👎 thats ❌ some bad 👎👎shit right 👎👎 th 👎 ere 👎👎👎 right ❌ " + "there ❌ ❌ if i do ƽaү so my selｆ🚫 i say so 🚫 thats not what im talking " + "about right there right there (chorus: ʳᶦᵍʰᵗ ᵗʰᵉʳᵉ) mMMMMᎷМ 🚫 👎 👎👎НO0Оଠ" + "ＯOOＯOОଠଠOoooᵒᵒᵒᵒᵒᵒᵒᵒᵒ 👎 👎👎 👎 🚫 👎 🐺 👎👎Bad shit"
                self.assumption.stringValue = "bad yiff bad yiff"
                self.plaintext.stringValue = badYiff
                println(error)
            }
        }
        
        task.resume()
    }
    
}
