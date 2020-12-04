import Foundation

func solve(_ startDate : String, _ endDate : String) {
    print(getDays(startDate, endDate))
}

func getDays(_ startDate : String, _ endDate : String) -> Int {
    let startDateFormatted = getDate(startDate)
    let endDateFormatted = getDate(endDate)
    
    let startDay = startDateFormatted.days
    let startMonth = startDateFormatted.month
    
    let endDay = endDateFormatted.days
    let endMonth = endDateFormatted.month
    
    if (startMonth > endMonth || (startMonth == endMonth && startDay > endDay)) {
        return -1
    }
    
    if (startMonth == endMonth) {
        return endDay - startDay
    }
    
    var daysInMonth = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    var days = endDay
    var currentMonth = endMonth - 1
    
    while currentMonth > startMonth {
        days += daysInMonth[currentMonth - 1]
        currentMonth -= 1
    }
    
    days += (daysInMonth[currentMonth - 1] - startDay)
    
    return days
}

func getDate(_ date: String) -> (days: Int, month: Int) {
    let array = Array(date);
    let days = String(array[0]) + String(array[1])
    let month = String(array[2]) + String(array[3])
    return (days: Int(days) ?? 0, month: Int(month) ?? 0)
}

// solve(startDate, endDate)
solve("1211", "1111")
solve("0111", "0211")
solve("1210", "1212")
solve("0101", "0304")