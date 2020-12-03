import Foundation

func solve(_ x: Int) -> Int {
    let digits = getDigits(x);
    return getNumber(digits);
}

func getNumber(_ arr: [Int]) -> Int {
    var temp = arr;
    var result = "";
    
    for i in (0..<temp.count).reversed() {
        
        var el = temp[i]
        
        while (el > 0) {
            el -= 1;
            result += String(i);
        }
        
        temp[i] = el
    }
    
    return Int(result) ?? 0;
}

func getDigits(_ x: Int) -> [Int] {
    var temp = x
    var digits = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]

    while (temp > 0) {
        let lastDigit = temp % 10;
        temp /= 10;
        
        digits[lastDigit] += 1;
    }

    return digits;
}

print(solve(7494))
print(solve(231))
print(solve(9873))