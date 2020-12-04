func solve(_ arr : [Int]) {
    let longestSequence = findLongestSequence(arr)
    
    print("\(arr) -> \(longestSequence)")
}

func findLongestSequence(_ arr : [Int]) -> [Int] {
    var longestSeq = 1
    var currentSeq = 1
    
    var prev = arr[0]
    var current = arr[0]
    
    var seq = [Int]()
    var currentSeqArr = [Int]()
    
    seq.append(prev)
    
    for i in 1..<arr.count {
        current = arr[i]
        
        if current == prev {
            currentSeq += 1
        } else {
            currentSeq = 1
            currentSeqArr = [Int]()
        }
        
        currentSeqArr.append(current)
        
        if (currentSeq > longestSeq) {
            longestSeq = currentSeq
            seq = currentSeqArr
        }
        
        prev = arr[i]
    }
    
    return seq
}

solve([1, 1, 3, 8, 12, 2, 2, 2, 4, 7, 7])
solve([1, 1, 3, 8, 12, 2, 2, 2, 4, 7, 7, 7])
solve([1, 2, 3, 4])