func solve(_ num : Int) {
    findDividers(num)
}

func findDividers(_ num : Int) {
    var tempNum = num;
    let upperBorder = num / 2;
    var dividers: [Int: Int] = [:]
    
    for i in 2...upperBorder {
        var reminder = tempNum % i
        
        while (tempNum > 1 && reminder == 0) {
          
           tempNum /= i;
           if dividers[i] != nil {
                dividers[i] = dividers[i]! + 1
            } else {
                dividers[i] = 1
            }
            reminder = tempNum % i
        }
    }
    
    print("\(num) <-> \(formatResult(dividers))")
}

func formatResult(_ dividers : [Int: Int]) -> String {
    var result = ""
    
    let sortByOccurrences = (Array(dividers).sorted {$0.1 < $1.1})
    
    for (div, occur) in sortByOccurrences {
        result += "(\(div), \(occur))"
    }
    
    return result
}


solve(125)
solve(126)
solve(121)
solve(21)