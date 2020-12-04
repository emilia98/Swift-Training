import Foundation

func solve(_ date : String, _ daysToAdd : Int) {
    let myDate = getDate(date);
    var daysInMonth = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];
    
    var days = myDate.day;
    var month = myDate.month;
    var year = myDate.year;
    
    // Check if year is a leap year
    if (isLeapYear(year)) {
        daysInMonth[1] = 29;
    }
    
    var newDays = days + daysToAdd;
    var currentMonthDays = daysInMonth[month - 1];
    
    while (newDays > currentMonthDays) {
        month += 1;
        newDays -= currentMonthDays;
        
        if (month > 12) {
            year += 1
            month = 1
            
            if (isLeapYear(year)) {
                daysInMonth[1] = 29;
            } else {
                daysInMonth[1] = 28;
            }
        }
        currentMonthDays = daysInMonth[month - 1];
        
    }
    
    days = newDays
    
    var result = "";
    
    result += days < 10 ? ("0" + String(days)) : String(days);
    result += month < 10 ? ("0" + String(month)) : String(month);
    result += String(year);
    
    print(result);
}

func getDate(_ date: String) -> (day: Int, month: Int, year: Int) {
    let array = Array(date);
    let days = String(array[0]) + String(array[1])
    let month = String(array[2]) + String(array[3])
    var year = "";
    
    for i in 4...7 {
        year += String(array[i])
    }
    return (day: Int(days) ?? 0, month: Int(month) ?? 0, year: Int(year) ?? 0)
}

func isLeapYear(_ year : Int) -> Bool {
    if (year % 400 == 0) {
        return true;
    }
    
    if (year % 100 == 0) {
        return false;
    }
    
    return year % 4 == 0;
}

solve("29112020", 3) // 02122020
solve("01012020", 63) // 04032020
solve("12122019", 80) // 01032020