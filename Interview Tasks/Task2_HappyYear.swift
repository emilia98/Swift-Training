import Foundation

func greet(year: Int) -> Void {
    print("Good Bye, \(year)! See you in \(findNextHappyYear(givenYear: year))!");
}

func findNextHappyYear(givenYear: Int) -> Int {
    var isHappyYear = false
    var year = givenYear;
    
    
    while (!isHappyYear) {
        year += 1;
        isHappyYear = findIfYearIsHappy(year: year);
    }
    
    return year;
}

func findIfYearIsHappy(year: Int) -> Bool{
    var digits = [Bool](repeating: false, count: 10)
    var temp = year;
    
    while (temp > 0) {
        let lastDigit = temp % 10
        temp /= 10
            
        if (digits[lastDigit] == true) {
            return false;
        }
        
        digits[lastDigit] = true;
    }
    
    return true;
}

greet(year: 2018)

greet(year: 2019)

greet(year: 9999)