//
//  FourthViewController.swift
//  WordPlay
//
//  Created by student3 on 12/9/15.
//  Copyright © 2015 JohnHerseyHighSchool. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var textView: UITextView!
     var myMadLib4 = MadLib()
    override func viewDidLoad() {
        super.viewDidLoad()
        textView.text = "There once were \(myMadLib4.int)" + " \(myMadLib4.noun) who of which all of them " +
            "\(myMadLib4.verb) the very \(myMadLib4.adjective)" + " sheep."

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
