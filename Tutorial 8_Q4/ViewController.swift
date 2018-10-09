//
//  ViewController.swift
//  Tutorial 8_Q4
//
//  Created by Jeanette Lee on 10/9/18.
//  Copyright © 2018 Jeanette Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var switch2: UISwitch!
    @IBOutlet weak var myText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    @IBAction func showSwitchedStatus(_ sender: Any) {
        //get the name from text field
        let name = myText.text!
       
        
        //get the switch status
        var msg:String;
        if switch2.isOn {
            msg =  " Female"
        }
        else {
            msg = " Male"
        }
    
    //create an UIAlert Message
        let alert = UIAlertController(title: "Hello", message: name + msg, preferredStyle: UIAlertController.Style.alert)
        alert.addAction (UIAlertAction (title: "OK", style: UIAlertAction.Style.default, handler: nil))
    self.present(alert, animated: true, completion: nil)
}
}

