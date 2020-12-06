func solve(_ arr : [Int]) {
    let duplicateNumber = getDuplicateNumber(arr)
    
    print("\(arr) -> \(duplicateNumber)")
}

func getDuplicateNumber(_ arr : [Int]) -> Int {
    var occurrences = [Int: Int]()
    
    for num in arr {
        if occurrences[num] == nil {
            occurrences[num] = 0
        }
        
        occurrences[num]? += 1
    }
    
    let sorted = occurrences.sorted { $0.1 > $1.1 }
    
    return sorted[0].key
}

solve([1, 4, 6, 7, 1, 13])