func solve(_ arr : [Int]) {
    let sortedByOccurences = sortByOccurences(arr)
    
    print("\(arr) -> \(sortedByOccurences)")
}

func sortByOccurences(_ arr : [Int]) -> [Int] {
    var occurences = [Int: Int]()
    var newArr = [Int]()
    
    for num in arr {
        if (occurences[num] == nil) {
            occurences[num] = 0
        }
        occurences[num]? += 1
    }
    
    let sortedByOccurences = occurences.sorted { (first, second) -> Bool in
        return first.value > second.value   
    }
    
    for (key, value) in sortedByOccurences {
        for _ in 1...value {
            newArr.append(key)
        }
    }
    
    return newArr
}

solve([2, 3, 5, 3, 7, 9, 5, 3, 7]) // [3, 3, 3, 5, 5, 7, 7, 2, 9]
solve([2, 1, 2]) // [2, 2, 1]