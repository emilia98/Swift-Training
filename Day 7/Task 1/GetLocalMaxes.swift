import Foundation

func solve(_ arr : [Int]) {
    let localMaxes = getLocalMaxes(arr)
    formatOutput(arr, localMaxes)
}

func getLocalMaxes(_ arr : [Int]) -> [Bool] {
    var prev = arr[0]
    var current = 0
    var currentLocalMax = arr[0]
    let count = arr.count
    var localMaxes = Array(repeating: false, count: count)
    localMaxes[0] = true
    
    for i in 1..<count {
        current = arr[i]
        
        if (prev < current) {
            currentLocalMax = current
            localMaxes[i] = true
            
            if localMaxes[i - 1] {
                localMaxes[i - 1] = false
            }
        }
        prev = current
    }
    
    return localMaxes
}

func formatOutput(_ arr: [Int], _ localMaxes: [Bool]) {
    var result = ""
    
    for i in 0..<arr.count {
        if localMaxes[i] {
            result += "[\(arr[i])] "
        } else {
            result += "\(arr[i]) "
        }
    }
    
    print("\(arr) -> \(result.trimmingCharacters(in: .whitespacesAndNewlines))")
}

solve([1, 2, 3, 2, 0, 6, 5]) // 1 2 [3] 2 0 [6] 5
solve([1, 2, 3, 2, 0, 5, 6]) // 1 2 [3] 2 0 5 [6]
solve([2, 1, 3, 2, 0, 5, 6]) // [2] 1 [3] 2 0 5 [6]
solve([2, 2, 3, 3, 2, 0, 6, 6]) // [2] 2 [3] 3 2 0 [6] 6