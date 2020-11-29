import Foundation

func solve(_ date : Int) {
    let formatedDate = formatDate(date)
    let day = formatedDate.day
    let month = formatedDate.month
    let year = formatedDate.year
    
    print(getWeekDay(day, month, year))
}

func formatDate(_ date : Int) -> (day : Int, month : Int, year : Int) 
{
    var tempDate = date
    let year = tempDate % 10000
    tempDate /= 10000
    let month = tempDate % 100
    let day = tempDate / 100
    return (day: day, month: month, year: year)
}

func getWeekDay(_ day : Int, _ month : Int, _ year : Int) -> String {
    let date = constructDate(day, month, year)
    
    let formatter = DateFormatter()
    formatter.dateFormat = "EEEE"
    let dayInWeek = formatter.string(from: date)
    
    return String(dayInWeek)
}

func constructDate(_ day : Int, _ month : Int, _ year : Int) -> Date {
    let dateString =  "\(year)/\(month)/\(day)";
    
    let formatter = DateFormatter()
    formatter.dateFormat = "yyyy/MM/dd"
    let date = formatter.date(from: dateString)!
    
    return date;
}

solve(29112022)
solve(9012022)
solve(27112020)