/*
 
 Given a string, return true if the number of appearances of "is" anywhere in the string is equal to the number of appearances of "not" anywhere in the string (case sensitive).
 
 equalIsNot("This is not") → false
 equalIsNot("This is notnot") → true
 equalIsNot("noisxxnotyynotxisi") → true
 
 */

import UIKit

func equalsIsNot(str: String) -> Bool {
    
    let charArray = Array(str.characters)
    
    var isCount = 0
    var notCount = 0
    
    for i in 0..<charArray.count - 2 {
        let isWord = String(charArray[i]) + String(charArray[i + 1])
        let notWord = String(charArray[i]) + String(charArray[i + 1]) + String(charArray[i + 2])
        
        if isWord == "is" {
            isCount += 1
        }
        
        if notWord == "not" {
            notCount += 1
        }
        
    }
    
    return isCount == notCount
}

print(equalsIsNot(str: "this is not"))



