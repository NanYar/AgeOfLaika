//
//  ViewController.swift
//  AgeOfLaika
//
//  Created by NanYar on 09.10.14.
//  Copyright (c) 2014 NanYar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var dogYearsLabel: UILabel!
    @IBOutlet weak var dogAgeTextField: UITextField!


    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

    @IBAction func convertButtonPressed(sender: UIButton) {
        
        let doubleNumberHumanYears = Double((dogAgeTextField.text as NSString).doubleValue)
        
        if doubleNumberHumanYears != 0 {
            
            dogYearsLabel.text = "The dog is \(doubleNumberHumanYears * 7) years old"
            dogYearsLabel.hidden = false
            dogAgeTextField.resignFirstResponder()
            dogAgeTextField.text = ""

            
        } else {
            
            dogYearsLabel.text = ""
            dogAgeTextField.text = ""
        }
        
    }
    
}
