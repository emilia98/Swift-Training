func solve(_ arr : [Int]) {
    let sorted = sort(arr)
    
    print("\(arr) -> \(sorted)")
}

func sort(_ arr : [Int]) -> [Int] {
    var start = 0, end = arr.count
    var arr = arr
    
    while start < end {
        let minElementIndex = findMinElement(arr, start, end)
        arr.swapAt(minElementIndex, end - 1)
        end -= 1
    }
    
    return arr
}

func findMinElement(_ arr : [Int], _ start : Int, _ end : Int) -> Int {
    var minIndex = start
    var min = arr[start]
    
    for i in start + 1..<end {
        if arr[i] < min {
            min = arr[i]
            minIndex = i
        }
    }
    return minIndex
}

solve([4, 1, 7, 3, 2]) // [7, 4, 3, 2, 1]