func find(_ arr : [Int], _ num : Int) -> Bool {

    for i in 0...arr.count / 2 {
        if arr[i] == num || arr[arr.count - i - 1] == num {
            return true
        }
    }
    return false
}

let a = [1, 2, 4, 6, 8, 10]
var search = 4
var isFound = find(a, search)
print(isFound)

search = 3
isFound = find(a, search)
print(isFound)