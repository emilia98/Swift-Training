func solve(_ arr : [Int]) {
    let duplicateNumber = getDuplicateNumber(arr)
    
    print("\(arr) -> \(duplicateNumber)")
}

func getDuplicateNumber(_ arr : [Int]) -> Int {
    var numbers = Set<Int>()
    
    for num in arr {
        if numbers.contains(num) {
            return num
        }
        
        numbers.insert(num)
    }
    
    return -1
}

solve([1, 4, 6, 7, 1, 13])