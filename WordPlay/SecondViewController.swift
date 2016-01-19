//
//  SecondViewController.swift
//  WordPlay
//
//  Created by student3 on 12/8/15.
//  Copyright © 2015 JohnHerseyHighSchool. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextViewDelegate {

    @IBOutlet weak var myButton: UIButton!
    @IBOutlet weak var myTextView3: UITextField!

    var myMadLib2 = MadLib()
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let nvc = segue.destinationViewController as! ThirdViewController
        myMadLib2.verb = myTextView3.text!
        nvc.myMadLib3 = myMadLib2
        
    
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
