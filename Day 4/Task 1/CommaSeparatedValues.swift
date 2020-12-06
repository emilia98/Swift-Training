func parse(_ str : String) -> [String] {
    let characters = Array(str)
    var result = [String]()
    var isInSingleQuotes = false
    var isInDoubleQuotes = false
    var temp = ""
    var isPrevEscaped = false
    
    for ch in characters {
        let character = String(ch)
        
        if ch == "\\" {
            isPrevEscaped = true
            continue
        } 
        
        if ch == " " {
            if isInSingleQuotes || isInDoubleQuotes {
                temp += character
            }
        } else if ch == "," {
            if (isInSingleQuotes || isInDoubleQuotes) {
                temp += character
            } else {
                result.append(temp)
                temp = ""
            }
        } else if ch == "\'" {
            if isInDoubleQuotes {
                temp += character
            } else {
                isInSingleQuotes = !isInSingleQuotes
            }
        } else if ch == "\"" {
            if isInSingleQuotes || (isInDoubleQuotes && isPrevEscaped) {
                temp += character
            } 
            else {
                isInDoubleQuotes = !isInDoubleQuotes
            }
        } else {
            temp += character
        }
        
        isPrevEscaped = false
        
    }
    
    result.append(temp)
    
    return result
}

var str = """
1, "аааа", 5
"""
print(parse(str))

str = """
12, 'aaaa', 3 
"""
print(parse(str))

str = """
"aa\\\"bb", test
"""
print(parse(str))