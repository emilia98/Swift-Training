import Foundation

func calculate(_ x: Int, _ d: Int) -> [Int] {
    var result = [Int]()
    var count = 0
    var sum = 0
    var prod = 1

    for i in 1...x {
        if doesContainDigit(i, d) {
            count += 1
            sum += i
            prod *= i
        }
    }

    result.append(count)
    result.append(sum)
    result.append(prod)
    return result
}

func doesContainDigit(_ n: Int, _ d: Int) -> Bool {
    var temp = n

    while temp > 0 {
        let lastDigit = temp % 10
        
        if lastDigit == d {
            return true
        }
        temp /= 10
    }

    return false
} 

print(calculate(30, 5))