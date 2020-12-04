func solve(_ num : Int ) {
    let digits = getDigits(num)
    
    print("\(num) -> \(formatOutput(digits))")
}

func getDigits(_ num : Int) -> [Int]{
    var n = num
    var digits = [Int]()
    
    while n > 0 {
        digits.append(n % 10)
        n /= 10
    }
    
    return digits.reversed()
}

func formatOutput(_ digits : [Int]) -> String {
    var output = [String]()
    var digit = 0
    
    for i in 0..<digits.count {
        digit = digits[i]
        
        if digit % 2 == 0 {
            output.append(String(digit))
        } else {
            if (output.count == 0 || output[output.count - 1] == "-") {
                output.append(String(digit))
            } else {
                output.append("-\(String(digit))")
            }
            
            if (i < digits.count - 1) {
                output.append("-")
            }
        }
    }
    
    return output.joined(separator: "")
}

solve(274)
solve(6815)
solve(731)
solve(4367952)
solve(126489)