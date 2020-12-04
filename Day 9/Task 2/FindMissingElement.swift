func solve(_ arr : [Int]) {
    let count = arr.count;
    let mid = count / 2 - 1
    let rightmostIndex = count - 1
    
    // Find the (elements count - 1) that are contained in the left subarray 
    let leftDiff = arr[mid] - arr[0]
    
    // Check the first half of the array
    if (hasMissingElements(leftDiff, mid, 0)) {
        let missingElement = findMissingElement(arr, 0, mid)
        formatOutput(arr, missingElement)
        return
    }
    
    // Find the (elements count - 1) that are contained in the right subarray 
    let rightDiff = arr[rightmostIndex] - arr[mid]
    
    // Check the second half of the array
    if (hasMissingElements(rightDiff, rightmostIndex, mid)) {
        let missingElement = findMissingElement(arr, mid, rightmostIndex)
        formatOutput(arr, missingElement)
    }
}

func hasMissingElements(_ diff: Int, _ maxIndex : Int, _ minIndex : Int) -> Bool {
    return diff != (maxIndex - minIndex)
}

func findMissingElement(_ arr : [Int], _ start : Int, _ end : Int) -> Int {
    // For each element in the subarray, find the difference between elements
    for i in start..<end {
        if (arr[i + 1] - arr[i] != 1) {
            return arr[i + 1] - 1
        }
    }
    return -1
}

func formatOutput(_ arr : [Int], _ element : Int) {
    print("\(arr) -> \(element)")
}

solve([7, 8, 10, 11, 12, 13]) // 9
solve([1, 3, 4, 5, 6]) // 2
solve([8, 9, 10, 12, 13]) // 11
solve([8, 9, 11, 12, 13]) // 10
solve([1, 3, 4]) // 2
solve([1, 2, 4, 5]) // 3
solve([8, 9, 10, 12]) // 11
solve([1, 3]) // 2