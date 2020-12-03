func solve(_ text : String) {
    let characters = Array(text)
    
    var newArr = [String]()
    var pointer = 0
    
    for ch in characters {
        if (ch == "#") {
            if (pointer > 0) {
                pointer -= 1
                newArr.remove(at: pointer);
            }
        }
        else {
            newArr.append(String(ch))
            pointer += 1
        }
    }
    
    print(formatOutput(newArr))
}

func formatOutput(_ arr : [String]) -> String {
    var output = ""
    
    for ch in arr {
        output += ch
    }
    
    return output
}

solve("a#bc#d") // bd
solve("abd##c") // ac
solve("abc##d######") // ""
solve("#######") // ""
solve("") // ""
solve("#") // ""
solve("#a") // a