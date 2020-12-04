func find(_ arr : [Int], _ num : Int) -> Bool {
    var leftSide = 0, rightSide = arr.count - 1
    
    while leftSide <= rightSide {
        let mid = (leftSide + rightSide) / 2
        
        if arr[mid] == num {
            return true
        } else if arr[mid] < num {
            leftSide = mid + 1
        } else {
            rightSide = mid - 1
        }
    }
    
    return false
}

let a = [1, 2, 4, 6, 8, 10]
var search = 1
var isFound = find(a, search)
print(isFound)

search = 3
isFound = find(a, search)
print(isFound)