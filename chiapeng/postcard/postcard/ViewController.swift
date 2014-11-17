//
//  ViewController.swift
//  postcard
//
//  Created by chiapeng on 11/4/14.
//  Copyright (c) 2014 chiapeng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var labeltxt: UILabel!
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var textinput: UITextField!
    @IBOutlet weak var messageInput: UITextField!
    @IBOutlet weak var sendMailButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonClicked(sender: UIButton) {
        labeltxt.hidden = false
        labeltxt.textColor = UIColor.redColor()
        labeltxt.text = messageInput.text
        sendMailButton.backgroundColor = UIColor.greenColor()
        messageInput.resignFirstResponder()
        messageInput.text=""
        sendMailButton.setTitle("mail sent", forState: UIControlState.Normal)
        labelName.hidden = false
        labelName.text = textinput.text
    
    }

}

