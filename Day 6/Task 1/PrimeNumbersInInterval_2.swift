func isPrime(_ num : Int, _ primes : [Int]) -> Bool {
    if num <= 2 {
        return true
    }
    
    for p in primes {
        if num % p == 0 {
            return false
        }
    }
    
    return true
}

func primes(_ end : Int) -> [Int] {
    var result = [Int]()
    
    for i in 2...end {
        if isPrime(i, result) {
            result.append(i)
        }
    }
    
    return result
}

let res = primes(100)
print(res)