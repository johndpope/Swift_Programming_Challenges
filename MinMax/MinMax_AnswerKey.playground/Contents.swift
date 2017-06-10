/*
 
 Given an array of numbers, write a simple swift program that will return the highest and smallest number from that list.
 
 */

import UIKit

var numList = [4, 7, 1, 6, 2, 9, 10, 3, 8, 5]

// Step 0️⃣, create 2 variables, highestValue and lowestValue and set them to the first value of your array


var highestValue = numList[0]
var lowestValue = numList[0]


// Step 1️⃣, create a for-loop that will increment throughout the array of numbers and compare each of the values to the highest and lowest value variables.
    // Challenge: What is the proper algorithm that will determine the highest and lowest value of the number array?

for i in 1..<numList.count {
    
    if highestValue < numList[i] {
        highestValue = numList[i]
    }
    
    if lowestValue > numList[i] {
        lowestValue = numList[i]
    }
}


// Step 2️⃣, print our highest and lowest value.

print(highestValue)
print(lowestValue)
