/*
 Merge 2 given arrays in ascending order.
 
 Sample Output
 array1 = [2, 4, 6, 8, 10]
 array2 = [1, 3, 5, 7, 9]
 
 output: 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
 
 */

import UIKit

let leftArray = [2, 4, 6, 8, 10]
let rightArray = [1, 3, 5, 7, 9]

func merge(arrLeft: [Int], arrRight: [Int]) -> [Int] {
    
    var mergedArray = [Int]()
    
    let arrLeftCount = arrLeft.count
    let arrRightCount = arrRight.count
    
    var arrL = 0
    var arrR = 0
    
    
    while arrL < arrLeftCount && arrR < arrRightCount {
        
        if arrLeft[arrL] < arrRight[arrR] {
            mergedArray.append(arrLeft[arrL])
            arrL += 1
        } else {
            mergedArray.append(arrRight[arrR])
            arrR += 1
        }
    }
    
    while arrL < arrLeftCount {
        mergedArray.append(arrLeft[arrL])
        arrL += 1
    }
    
    while arrR < arrRightCount {
        mergedArray.append(arrRight[arrR])
        arrR += 1
    }
    
    return mergedArray
}

print(merge(arrLeft: leftArray, arrRight: rightArray))

