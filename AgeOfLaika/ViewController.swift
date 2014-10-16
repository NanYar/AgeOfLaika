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
        let doubleNumberHumanYearsStringConverted = replaceCharacter(inputString: dogAgeTextField.text, toReplace: ",", replaceWith: ".")
        let doubleNumberHumanYears = Double((doubleNumberHumanYearsStringConverted as NSString).doubleValue)
        var dogYears: Double
        
        if doubleNumberHumanYears != 0
        {            
            if doubleNumberHumanYears <= 2
            {
                dogYears = doubleNumberHumanYears * 10.5
            }
            else
            {
                let dogYearsDiff = doubleNumberHumanYears - 2
                dogYears = (10.5 * 2) + (dogYearsDiff * 4)
            }
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
