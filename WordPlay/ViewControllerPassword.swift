//
//  ViewControllerPassword.swift
//  WordPlay
//
//  Created by student3 on 1/15/16.
//  Copyright © 2016 JohnHerseyHighSchool. All rights reserved.
//
// "PAPA JOHNS IS RATHER SKETCH I DO SAY" -- PATRICK D 2k16

import UIKit

class ViewControllerPassword: UIViewController {
    func clearLabel() {
        passwordLabel.text = ""
    }
    var numberOfLetters = 0
    var password = ""

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var passwordLabel: UILabel!
    
    
    func randomStringWithLength (len : Int) -> NSString {
        let letters : NSString = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
        let randomString : NSMutableString = NSMutableString(capacity: len)
        for (var i=0; i < len; i++){
            let length = UInt32 (letters.length)
            let rand = arc4random_uniform(length)
            randomString.appendFormat("%C", letters.characterAtIndex(Int(rand)))
        }
        return randomString
    }
    @IBAction func generateButton(sender: UIButton) {
        numberOfLetters = Int(textField.text!)!
        passwordLabel.text = randomStringWithLength(numberOfLetters) as String
        print(randomStringWithLength(numberOfLetters) as String)
        if numberOfLetters >= 100 {
            let alert = UIAlertController(title: "Reseting", message: "Press OK to reset", preferredStyle: UIAlertControllerStyle.Alert)
            let OKAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil)
            presentViewController(alert, animated: true, completion: nil)
            alert.addAction(OKAction)
        }

    
}
}