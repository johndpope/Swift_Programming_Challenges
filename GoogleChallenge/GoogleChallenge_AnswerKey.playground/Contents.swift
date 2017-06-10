/*
 
 Given a sorted array, write a simple Swift program that will determine if the array has at least 2 values that will sum up to N.
 
 Example.
 
 
 N = 8
 [2, 3, 4, 4] -> True    // This is true because we have 2 pairs that sum up to 8.
 
 N = 10
 [2, 3, 5, 6] -> False  // This is false because we don't have any pairs that will sum up to 10.
 
 
 */

import UIKit

func equalToSum(intArray: [Int], sum: Int) -> Bool{
    
    var x = 0                       // This is our first index
    var y = intArray.count - 1      // This is our last index
    
    while y < intArray.count {      // Use a while loop to increment through the array
        
        if intArray[x] + intArray[y] < sum {
            x += 1  // Increment x if it is less than the sum
        } else if intArray[x] + intArray[y] > sum {
            y -= 1 // Decrement y if it is greater than the sum
        } else if intArray[x] + intArray[y] == sum {
            return true // Return true if we find a match!
        } else {
            return false    // Return false otherwise
        }
    }
    return false
}


// Test
print(equalToSum(intArray: [2, 3, 4, 10], sum: 7))

