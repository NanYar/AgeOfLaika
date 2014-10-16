//
//  ViewController.swift
//  AgeOfLaika
//
//  Created by NanYar on 09.10.14.
//  Copyright (c) 2014 NanYar. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    
    @IBOutlet weak var dogYearsLabel: UILabel!
    @IBOutlet weak var dogAgeTextField: UITextField!
    
    let replaceCharacter = replaceCharacterModel
    let dogYearsConverter = dogYearsConverterModel
    

    override func viewDidLoad()
    {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    

    @IBAction func convertButtonPressed(sender: UIButton)
    {
        let humanYearsStringConverted = replaceCharacter(inputString: dogAgeTextField.text, toReplace: ",", replaceWith: ".")
        let humanYearsDouble = Double((humanYearsStringConverted as NSString).doubleValue)
        
        if humanYearsDouble != 0
        {           
            let dogYears = dogYearsConverter(dogAge: humanYearsDouble)
            
            dogYearsLabel.text = "The dog is \(dogYears) years old"
            dogYearsLabel.hidden = false
            dogAgeTextField.resignFirstResponder()
            dogAgeTextField.text = ""
        }
        else
        {
            dogYearsLabel.text = ""
            dogAgeTextField.text = ""
        }
        
    }
    
}
