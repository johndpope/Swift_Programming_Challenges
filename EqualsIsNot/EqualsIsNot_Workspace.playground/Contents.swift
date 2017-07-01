/*
 
 
 Given a string, return true if the number of appearances of "is" anywhere in the string is equal to the number of appearances of "not" anywhere in the string (case sensitive).
 
 ***Example***
 equalIsNot("This is not") → false
 equalIsNot("This is notnot") → true
 equalIsNot("noisxxnotyynotxisi") → true
 
 ***HINT***
 
 Since charArray is a sequence of Array(String.characters._Element), you want to convert every charArray element into a string
 
 example: String(charArray[i])
 
 */

import UIKit

func equalsIsNot(str: String) -> Bool {
    
    let charArray = Array(str.characters)
    
    var isCount = 0
    var notCount = 0
    
    return isCount == notCount
}

print(equalsIsNot(str: "this is not"))



