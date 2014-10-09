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

    @IBAction func convertToRealDogYearsButton(sender: UIButton) {
        let stringFromTextField = humanYearsTextField.text
        let optionalDoubleFromTextField = Double((stringFromTextField as NSString).doubleValue)
        
        var realDogYears:Double
        
        if (optionalDoubleFromTextField > 2)
        {
            realDogYears = (10.5 * 2) + (optionalDoubleFromTextField - 2) * 4
        }
        else
        {
            realDogYears = optionalDoubleFromTextField * 10.5
        }
        dogYearsLabel.hidden = false
        dogYearsLabel.text = "\(realDogYears)" + "Real Human Years"
        humanYearsTextField.resignFirstResponder()
    }
}

