func find(_ arr : [Int], _ num : Int) -> Bool {
    var leftBorder = 0
    var rightBorder = arr.count - 1
    let mid = arr.count / 2
    
    while leftBorder <= mid {
        if arr[leftBorder] == num || arr[rightBorder] == num {
            return true
        }
        
        leftBorder += 1
        rightBorder -= 1
    }
    
    return false
}

var a = [1, 2, 4, 6, 8, 10]
var search = 4
var isFound = find(a, search)
print(isFound)

search = 3
isFound = find(a, search)
print(isFound)