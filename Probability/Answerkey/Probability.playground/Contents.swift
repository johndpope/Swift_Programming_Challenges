//: Playground - noun: a place where people can play

import UIKit

let list = [1, 2, 2, 2, 3, 4, 4, 4, 4, 5, 6, 6]
var i = 0
var temp = [Int]()

let total = list.count

while i < total {
    
    if i != total - 1 && list[i] == list[i + 1] {
      temp.append(list[i])
    } else if i != total - 1 && list[i] != list[i + 1] || i == total - 1{
        temp.append(list[i])
        let prob = Double(temp.count) / Double(total)
        print("Probability of selecting \(list[i]): \(prob * 100)%")
        temp.removeAll()
    }
    
    i += 1
    
}
