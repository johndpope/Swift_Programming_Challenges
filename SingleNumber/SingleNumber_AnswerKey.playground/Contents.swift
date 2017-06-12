//: Playground - noun: a place where people can play

/*
 
 Write a method that returns a number that appears only once in an array.
 Assume the array will surely have one unique value. The array will never be empty.
 Examples:
 
 {1,2,3,4,1,2,4,3,5} ==> 5
 
 */

import UIKit

let intArray = [1, 2, 3, 4, 1, 2, 5, 4, 3]

func findSingleValue(int: [Int]) -> Int {
    
    // Create a temporary dictionary of type NSMutableDictionary
    let tempDictionary = NSMutableDictionary()
    
    // Iterate through the int array
    for i in int {
        
        // Returning a value by referencing its key and make sure it is an optional!
        let value = tempDictionary.object(forKey: "\(i)") as? Int
        
        // Compared the retrun value
        if value != i {
            // If such value does not already exist in our dictionary, we add it into our dictionary and the key is the same as our value as a string
            tempDictionary.setValue(i, forKey: "\(i)")
        } else {
            // If such value does exist, we remove the object by referencing its key
            tempDictionary.removeObject(forKey: "\(i)")
        }
    }
    
    // We then return all values of our dictionary and cast it as an Int.
    return tempDictionary.allValues[0] as! Int
    
    // The allValues function returns an array and since we are sure that we will be left with one value, we then call the array position 0.
}


// Call the function and pass the intArray variable.
print(findSingleValue(int: intArray))


