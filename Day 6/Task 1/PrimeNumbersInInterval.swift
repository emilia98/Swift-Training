func isPrime(_ num : Int) -> Bool {
    if num <= 2 {
        return true
    }
    
    for i in 2 ..< num {
        if num % i == 0 {
            return false
        }
    }
    
    return true
}

func primes(_ end : Int) -> [Int] {
    var result = [Int]()
    
    for i in 1...end {
        if isPrime(i) {
            result.append(i)
        }
    }
    
    return result
}

let res = primes(100)
print(res)