import Foundation

func findMissingNumber(_ arr: [Int]) -> Int {
    let n = arr.count + 1
    
    var xorFullRange = 0
    for i in 1...n {
        xorFullRange ^= i
    }
    
    var xorArray = 0
    for num in arr {
        xorArray ^= num
    }
    
    return xorFullRange ^ xorArray
}

let inputArray = [3, 7, 1, 2, 5, 4]
let missingNumber = findMissingNumber(inputArray)
print("The missing number is: \(missingNumber)")
