func getUnique(_ text1 : String, _ text2 : String) -> [String] {
    let first = Array(text1)
    let second = Array(text2)
    
    let firstCount = first.count
    let secondCount = second.count
    var arr = [String]()
    
    if (firstCount < secondCount) {
        arr = getContainedUniqueCharacters(first, second)
    } else {
        arr = getContainedUniqueCharacters(second, first)
    }
    
    return arr
}

func isContained(_ arr : [String], _ char : String) -> Bool {
    for ch in arr {
        if (ch == char) {
            return true
        }
    }
    return false
}

func getContainedUniqueCharacters(_ shorterText: Array<Character>, _ longerText: Array<Character>) -> [String]{
    var arr = [String]()
    let shorterCount = shorterText.count
    let longerCount = longerText.count
    
    for i in 0..<shorterCount {
        let currentCharShorter = shorterText[i]
        
        for j in 0..<longerCount {
            let currentCharLonger = longerText[j]
            
            if (currentCharShorter == currentCharLonger) {
            
                if (!isContained(arr, String(currentCharShorter))) {
                    arr.append(String(currentCharShorter))
                }
                    
                break
            }
        }
    }
    
    return arr
}

var characters = getUnique("Hello", "BellowH")
print(characters)

characters = getUnique("Hello", "BellowH")
print(characters)

characters = getUnique("BellowH", "Hello")
print(characters)

characters = getUnique("AbCdE", "ABCDEFEA")
print(characters)

characters = getUnique("AbC", "aB")
print(characters)