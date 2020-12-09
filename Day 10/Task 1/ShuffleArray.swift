func shuffle(_ arr : inout [Int]) {
    for i in 0...arr.count / 2 {
        let temp = arr[i]
        arr[i] = arr[arr.count - i - 1]
        arr[arr.count - i - 1] = temp
    }
}

var a = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
shuffle(&a) // & is pointer
print(a)

a = [1, 2, 3, 4, 5, 6, 7, 8, 9]
shuffle(&a)
print(a)