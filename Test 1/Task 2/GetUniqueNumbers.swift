import Foundation

func solve(_ arr : [Int]) {
    var newArr = [Int]()
    var currentPos = 0
    var currentElement = arr[currentPos]
    
    newArr.append(currentElement)
    currentPos += 1
    
    for i in 1..<arr.count {
        currentElement = arr[i]
        if (!isContained(newArr, currentElement)) {
            newArr.append(currentElement)
        }
        currentPos += 1
    }
    
    print(newArr)
}

func isContained(_ newArr: [Int], _ currentElement : Int) -> Bool {
    for el in newArr {
        if (el == currentElement) {
            return true
        }
    }
    return false
}

solve([3, 12, 5, 12, 8, 5])
solve([1, 2, 3, 2, 1])