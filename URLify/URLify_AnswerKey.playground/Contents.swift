/*
 
 Given any string, write a simple Swift program that will replace every blank space with %20 without using the built in replace method provided by the UIKit module.
 
 */

import UIKit



func replaceSpaces(str: String) -> String {
    
    // Create an array of characters
    var strArray = str.characters
    
    // Create an empty string variable
    var finalStr = ""
    
    // Iterate through the array of characters
    for i in strArray {
        
        // If you find a blank space character, you will replace it with a %20
        if i == " " {
            finalStr = finalStr + "%20"
        } else { //If it fails, then concatinate the rest of the characters
            finalStr = finalStr + String(i)
        }
    }
    
    // Return the finished string
    return finalStr
}

