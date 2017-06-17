// Given an array of Int, return true if the array is in ascending order.
// Example:
// [1, 2, 3, 4, 5] - > true
// [1, 1, 2, 3, 4] - > true
// [1, 3, 2, 4, 5] - > false

import UIKit

func inOrder(intArray: [Int]) -> Bool {
    
    // Create a counter
    var counter = 0
    
    // Iterate through the int array - 1. Explained below.
    for i in 0..<intArray.count - 1 {
        
        // Compare the current index to index + 1
        if intArray[i] <= intArray[i + 1] {
            // if its true, we add to our counter
            counter += 1
        }
    }
    
    // We check if our counter is equal to the array count - 1
    return counter == (intArray.count - 1)
}

var nums: [Int] = [1, 2, 3, 3, 6]

print(inOrder(intArray: nums))

// For-loop explained

/*
 
 Suppose our given array is [1, 2, 3, 4, 5]. The index of our array will count from 0-4
 
 we want to compare indexes [0, 1]; [1, 2]; [2, 3], [3, 4]
 
 so we want to increment from 0-3 instead of 0-4. Why?
 
 If i represents our index starting at 0, we can do
 
 if intArray[i] <= intArray[i + 1]
 this translates to
 
 intArray[0] <= intArray[0 + 1]
 intArray[1] <= intArray[1 + 1]
 intArray[2] <= intArray[2 + 1]
 intArray[3] <= intArray[3 + 1]
 
 */