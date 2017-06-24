/*
 
 Given a string and a non-negative int n, we'll say that the front of the string is the first 3 chars, or whatever is there if the string is less than length 3. Return n copies of the front;
 
 frontTimes("Chocolate", 2) → "ChoCho"
 frontTimes("Chocolate", 3) → "ChoChoCho"
 frontTimes("Abc", 3) → "AbcAbcAbc"
 
 
 */

import UIKit

func frontTimes(str: NSString, n: Int) -> String{
    
    let parsedString: String = str.substring(to: 3)
    var tempString = ""
    
    for _ in 0..<n {
        tempString = tempString + parsedString
    }
    
    return tempString
    
}

let value = frontTimes(str: "Chocolate", n: 3)
print(value)


