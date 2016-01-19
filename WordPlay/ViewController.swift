//
//  ViewController.swift
//  WordPlay
//
//  Created by student3 on 12/4/15.
//  Copyright © 2015 JohnHerseyHighSchool. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate {

    //Testing
    //Testing #2 This is a test
    
    @IBOutlet weak var myButton: UIButton!
    @IBOutlet weak var myTextField: UITextField!
    var myMadLib1 = MadLib()
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let nvc = segue.destinationViewController as! SecondViewController
        myMadLib1.noun = myTextField.text!
        nvc.myMadLib2 = myMadLib1
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

