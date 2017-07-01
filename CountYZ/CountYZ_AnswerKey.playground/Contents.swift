/*
 
 Given any string, count the number of words ending with 'y' or 'z'
 
 The 'y' in "heavy" and 'z' in "fez" count, but not 'y' in "yellow" (not case sensitive)
 
 
 countYZ("fez day") → 2
 countYZ("day fez") → 2
 countYZ("day yell") → 1
 
 *** HINT ***
 
 The NSString has a method where you can get the substring and length.
 
 */

import UIKit


func countYZ(str: NSString) -> Int {
    
    let strArray = str.components(separatedBy: " ") as [NSString]
    var counter = 0
    
    for string in strArray {
        let index = string.length
        let parsedString = string.substring(from: index - 1)
        
        if parsedString.lowercased() == "y" || parsedString.lowercased() == "z" {
            counter += 1
        }
    }
    
    return counter
    
}

let count = countYZ(str: "day yell")
print(count)
