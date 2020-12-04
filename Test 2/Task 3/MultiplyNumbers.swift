func multiply(_ x : Int, _ y : Int) -> Int {
    if (x < y) {
        return getResult(x, y)
    } 
    
    return getResult(y, x)
}

func getDigits(_ n : Int) -> [Int] {
    var num = n
    var digits = [Int]()
    
    while num > 0 {
        digits.append(num % 10)
        num /= 10
    }
    
    return digits
}

func getResult(_ num1 : Int, _ num2 : Int) -> Int {
    let smallerDigits = getDigits(num1)
    let biggerDigits = getDigits(num2)
    
    var outerPow = 0
    var finalResult = 0
    
    for i in 0..<smallerDigits.count {
        let current = smallerDigits[i]
        
        var innerPow = 0
        var innerResult = 0
        
        for j in 0..<biggerDigits.count {
            var currentResult =  current * biggerDigits[j]
            
            if (innerPow > 0) {
                for _ in 1...innerPow {
                    currentResult *= 10
                }
            }
            
            innerResult += currentResult
            innerPow += 1
        }
        
        if outerPow > 0 {
            for _ in 1...outerPow {
                innerResult *= 10
            }
        }
        
        finalResult += innerResult
        outerPow += 1
    }
    
    return finalResult
}

var answer = multiply(10, 11) // 110
print(answer)

answer = multiply(11, 2) // 22
print(answer)

answer = multiply(17, 12) // 204
print(answer)

answer = multiply(105, 22) // 2310
print(answer)

answer = multiply(123, 1234) // 151782
print(answer)

answer = multiply(2, 2) // 4
print(answer)

answer = multiply(10, 0) // 0
print(answer)