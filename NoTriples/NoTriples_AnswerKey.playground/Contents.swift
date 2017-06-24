/*
 
 Given an array of ints, we'll say that a triple is a value appearing 3 times in a row in the array. Return true if the array does not contain any triples.
 
 noTriples([1, 1, 2, 2, 1]) → true
 noTriples([1, 1, 2, 2, 2, 1]) → false
 noTriples([1, 1, 1, 2, 2, 2, 1]) → false
 
 
 */

import UIKit

func noTriples(nums: [Int]) -> Bool {
    
    for i in 0..<nums.count - 2 {
        
        let x = nums[i]
        let y = nums[i + 1]
        let z = nums[i + 2]
        
        if x == y && x == z {
            return true
        }
    }
    
    return false
}

let numsArray = [1, 1, 2, 2, 2]
let x = noTriples(nums: numsArray)

print(x)
