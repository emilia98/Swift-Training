import Foundation

func solve(_ arr: [Int]) {
    print(sort(arr))
}

func sort(_ arr: [Int]) -> [Int]{
    var arrCopy = arr
    var pos : Int
    
    for i in 0..<arrCopy.count - 1 {
        pos = i
        arrCopy = findMin(arrCopy, pos)
    }
    
    return arrCopy
}

func findMin(_ arr: [Int], _ pos: Int) -> [Int] {
    var arrCopy = arr
    var currentElement : Int
    let currentPos = pos + 1
    var currentPosMin = pos
    var min = arr[currentPosMin]
    
    for i in currentPos..<arr.count {
        currentElement = arr[i]
        
        if (currentElement < min) {
            min = currentElement
            currentPosMin = i
        }
    }
    
    arrCopy = swap(arr, currentPos - 1, currentPosMin)
    
    return arrCopy
}

func swap(_ arr: [Int], _ pos: Int, _ posMin: Int) -> [Int] {
    var copyArr = arr
    let temp = copyArr[pos]
    copyArr[pos] = copyArr[posMin]
    copyArr[posMin] = temp
    
    return copyArr
}

solve([7, 3, -10, 4, 2])
solve([-8, 8, 3, 5, 0, -17])