//: Playground - noun: a place where people can play
/*
 
 Find the first duplicate character in a string. Return null if no duplicate character is found.

 firstNonRepeatedCharacter( "abcbc" ) --> 'b'


*/


import UIKit


let str = "acbc"

func firstUniqueCharacter(str: String) -> Character {
    
    //Create a temporary Array
    var tempArray = [Character]()
    
    // Iterate through the array
    for i in str.characters {
        
        // If the character exists in our temp array, we will then return that character.
        if tempArray.contains(i) {
            return i
        } else {
            
            // If the character does not exist in our array, we then append that character.
            tempArray.append(i)
        }
    }
    
    return " " // Empty Character
}


