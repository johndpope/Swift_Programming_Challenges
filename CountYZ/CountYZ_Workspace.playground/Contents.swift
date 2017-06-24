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
    
    var counter = 0
    
    return counter
    
}

let count = countYZ(str: "day yell")
print(count)
