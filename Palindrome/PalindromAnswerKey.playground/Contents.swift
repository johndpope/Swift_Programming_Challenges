// Answer Key

/*
 
 A palindrome is a word, phrase, number, or other sequence of characters which reads the same backward as forward
 
 Write a simple Swift program that will check if a given string is indeed a palindrome or not. You can ignore character cases.
 
 
 */


import UIKit

var str = "Civic".lowercased()

// Step 0️⃣, we want to convert our string into an array of characters.

let array = Array(str.lowercased().characters)


// Step 1️⃣, we want to create an empty string variable. This variable will hold our new string

var newStr = ""


// Step 2️⃣, create a for-loop that will print our string backwards.
    // ⭐️Challenge⭐️, how do you print a string backwards? 🤔

for i in 0..<array.count {
    newStr += String(array[array.count - i - 1])
}


// step 3️⃣, compare the new string and the original string to see if they are spelled the same.

print(str == newStr)
