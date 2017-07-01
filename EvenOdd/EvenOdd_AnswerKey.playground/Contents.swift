/*
 
 Given an array, write a simple Swift program that will rearranged  all values so that all even numbers come before all the odd numbers.
 
 ***Example***
 evenOdd([1, 0, 1, 0, 0, 1, 1]) → [0, 0, 0, 1, 1, 1, 1]
 evenOdd([3, 3, 2]) → [2, 3, 3]
 evenOdd([2, 2, 2]) → [2, 2, 2]
 
 */

import UIKit

func evenOdd(nums: [Int]) -> [Int] {
    
    var evenNumbers = [Int]()
    var oddNumbers = [Int]()
    
    for i in nums {
        if i % 2 == 0 {
            evenNumbers.append(i)
        } else {
            oddNumbers.append(i)
        }
    }
    
    oddNumbers.append(contentsOf: evenNumbers)
    
    return oddNumbers
}



