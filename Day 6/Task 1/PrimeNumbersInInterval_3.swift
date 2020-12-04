func primes(_ end : Int) -> [Int] {
    var result = [Int]()
    var arr = Array(repeating: false, count: end + 1)
    
    for i in 2 ... end {
        if arr[i] {
            continue
        }
        
        result.append(i)
        
        for j in stride(from: i * i, through: end, by: i) {
            arr[j] = true
        }
    }
    
    return result
}

let res = primes(100)
print(res)