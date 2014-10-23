//
//  Factory.swift
//  AgeOfLaika
//
//  Created by NanYar on 23.10.14.
//  Copyright (c) 2014 NanYar. All rights reserved.
//

import Foundation


class Factory
{
    // Helper funktion to replace a character in a user input string
    class func replaceCharacter(#inputString: String, toReplace: Character, replaceWith: Character) -> String
    {
        var characterArray = [Character]()
        
        for character in inputString
        {
            characterArray.append(character)
        }
        
        for (index, value) in enumerate(characterArray)
        {
            if value == toReplace
            {
                characterArray[index] = replaceWith
            }
        }
        return String(characterArray)
    }
    
    
    // Helper funktion to compute a real dog age
    class func dogYearsConverter(#dogAge: Double) -> Double
    {
        var realDogAge: Double
        
        if dogAge <= 2
        {
            realDogAge = dogAge * 10.5
        }
        else
        {
            realDogAge = (2 * 10.5) + ((dogAge - 2) * 4)
        }
        return realDogAge
    }
}
