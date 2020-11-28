import Foundation

for i in 1...100 {
    let multipleOfThree = i % 3 == 0;
    let multipleOfFive = i % 5 == 0;
    
    var result = multipleOfThree == true ?  "Fizz " : "";
    result += multipleOfFive == true ? "Buzz" : "";
     
    if (result.isEmpty) {
        result = String(i)
    }
    
    print(result.trimmingCharacters(in: .whitespacesAndNewlines))
}