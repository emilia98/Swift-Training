import Foundation

func solve(_ x: Int) -> Int {
    var digits = getDigits(x);
    digits.sort(by: >);

    let maxNumber = Int(digits.map(String.init).joined());
    return maxNumber ?? x
}

func getDigits(_ x: Int) -> [Int] {
    var temp = x;
    var digits = [Int]();

    while (temp > 0) {
        let lastDigit = temp % 10;
        temp /= 10;
        digits.append(lastDigit);
    }

    return digits;
}

print(solve(231))
print(solve(9873))