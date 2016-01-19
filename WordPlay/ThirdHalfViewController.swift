//
//  ThirdHalfViewController.swift
//  WordPlay
//
//  Created by student3 on 1/12/16.
//  Copyright © 2016 JohnHerseyHighSchool. All rights reserved.
//

import UIKit

class ThirdHalfViewController: UIViewController,UITextFieldDelegate{

    @IBOutlet weak var mybutton5: UIButton!
    @IBOutlet weak var mytextfield5: UITextField!
   var myMadlib5 = MadLib()
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
     let nvc = segue.destinationViewController as!  FourthViewController
        myMadlib5.int = mytextfield5.text!
        nvc.myMadLib4 = myMadlib5
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
