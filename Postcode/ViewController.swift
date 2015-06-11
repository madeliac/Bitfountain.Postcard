//
//  ViewController.swift
//  Postcode
//
//  Created by Andy Madeley on 20/05/2015.
//  Copyright (c) 2015 Andy Madeley. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var enterLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        enterLabel.hidden = false
        enterLabel.text = enterMessageTextField.text
        enterLabel.textColor = UIColor.orangeColor()
        
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        
    }

}

