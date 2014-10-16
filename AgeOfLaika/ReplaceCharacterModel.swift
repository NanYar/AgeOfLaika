//
//  ReplaceCharacterModel.swift
//  AgeOfLaika
//
//  Created by NanYar on 16.10.14.
//  Copyright (c) 2014 NanYar. All rights reserved.
//

func replaceCharacterModel(#inputString: String, #toReplace: Character, #replaceWith: Character) -> String
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
    
    return String(seq: characterArray)
}
