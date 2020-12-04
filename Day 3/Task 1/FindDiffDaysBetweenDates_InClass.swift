func datesDiff(_ startDate : Int, _ endDate : Int) -> Int {
    let firstDate = days(startDate)
    let secondDate = days(endDate)
    
    return firstDate < secondDate ? -1 : (firstDate - secondDate)
}

func days(_ date : Int) -> Int {
    let days = date / 100
    var month = date % 100 - 1
    
    let daysInMonth = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    
    var result = 0
    month -= 1
    
    while month >= 0 {
        result += daysInMonth[month]
        month -= 1
    }
    
    result += days
    
    return result
}

var d = datesDiff(0112, 3011)
print(d)

d = datesDiff(0112, 1511)
print(d)