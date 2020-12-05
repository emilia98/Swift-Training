func solve(_ r : Int, _ g : Int, _ b : Int) {
    let redComponent = getHexRepresentation(r)
    let greenComponent = getHexRepresentation(g)
    let blueComponent = getHexRepresentation(b)
    let result = redComponent + greenComponent + blueComponent
    
    print(r, g, b)
    print(result)
}

func getHexRepresentation(_ num : Int) -> String {
    var decimalNum = num
    let hexDigits = [ "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "A", "B", "C", "D", "E", "F"]
    var hexNum : String = "";
    var reminder = 0;
    
    if (decimalNum == 0) {
        hexNum = "00"
    } 
    
    while (decimalNum > 0) {
        reminder = decimalNum % 16
        decimalNum /= 16
        
        hexNum = hexDigits[reminder] + hexNum
    }
    
    return hexNum
}

solve(255, 255, 255) // FFFFFF
solve(255, 255, 254) //  FFFFFЕ
solve(0, 0, 0) // 000000
solve(148, 0, 211) // 9400D3