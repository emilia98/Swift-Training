func shuffle(_ arr  : inout [Int]) {
    for i in 0..<arr.count {
        var newIndex = Int.random(in: 0...arr.count - 1)
        arr.swapAt(i, newIndex)
    }
}

var a = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
shuffle(&a)
print(a)

a = [1, 2, 3, 4, 5, 6, 7, 8, 9]
shuffle(&a)
print(a)