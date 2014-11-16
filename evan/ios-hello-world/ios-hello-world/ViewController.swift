//
//  ViewController.swift
//  ios-hello-world
//
//  Created by Evan Li on 10/19/14.
//  Copyright (c) 2014 Evan Li. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMsgTextField: UITextField!
    
    @IBOutlet weak var msgLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        msgLabel.hidden = false
        msgLabel.text = "Dear " + enterNameTextField.text +
            ":\n" + enterMsgTextField.text
        
        enterMsgTextField.text = ""
        enterMsgTextField.resignFirstResponder()
        
    }

}

