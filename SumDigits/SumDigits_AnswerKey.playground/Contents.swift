/*
 
 Given a string, return the sum of the digits 0-9 that appear in the string, ignoring all other characters. Return 0 if there are no digits in the string. (Note: Character.isDigit(char) tests if a char is one of the chars '0', '1', .. '9'. Integer.parseInt(string) converts a string to an int.)
 
 ***Example
 sumDigits("aa1bc2d3") → 6
 sumDigits("aa11b33") → 8
 sumDigits("Chocolate") → 0
 
 ***HINT***
 
 Iterate through each character and convert the character to a string then to an int.
 
 */

import UIKit

func sumDigits(str: String) -> Int {
    
    var sum = 0
    
    for i in str.characters {
        
        if let intVal = Int(String(i)) {
            sum = sum + intVal
        }
    }
    
    return sum
}

print(sumDigits(str: "1b2cbej2"))