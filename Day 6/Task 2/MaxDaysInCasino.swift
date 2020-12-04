func solve(_ arr: [Int]) {
    var chips = arr.sorted(by: >)
    var days = 0
    
    while chips[0] > 0 && (chips[1] > 0 || chips[2] > 0) {
        days += 1
        
        if chips[1] > 0 {
            chips[1] -= 1
        }
        else if chips[2] > 0 {
            chips[2] -= 1
        }
        
        chips[0] -= 1
    }
    
    print(days)
}

solve([1, 1, 1]) // 1
solve([1, 2, 1]) // 2
solve([1, 3, 1]) // 2
solve([4, 2, 1]) // 3
solve([0, 4, 2]) // 2