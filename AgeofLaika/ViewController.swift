//
//  ViewController.swift
//  AgeofLaika
//
//  Created by Andrew Affolter on 10/4/14.
//  Copyright (c) 2014 andrew. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dogYearsLabel: UILabel!
    
    @IBOutlet weak var humanYearsTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertToDogYearsButton(sender: UIButton) {
        let humanYears = humanYearsTextField.text.toInt()!
        let conversionConstant = 7
        dogYearsLabel.hidden = false
        dogYearsLabel.text = "\(humanYears * conversionConstant)" + " Human Years"
        humanYearsTextField.resignFirstResponder()
        
    }

}

