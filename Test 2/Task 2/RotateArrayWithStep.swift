func rotate(_ numbers : [Int], _ step : Int) {
    var arr = numbers
    let count = arr.count
    let rotations = step % count
    
    if (rotations != 0) {
        for _ in 1...rotations {
            for i in 0..<count - 1 {
                let temp = arr[i]
                arr[i] = arr[i + 1]
                arr[i + 1] = temp
            }
        }
    }
    
    print("\(numbers) -> \(arr)")
}

rotate([1, 2, 3], 1) // [2, 3, 1]
rotate([1, 2, 3], 2) // [3, 1, 2]
rotate([1, 2, 3], 6) // [1, 2, 3]
rotate([1, 2, 3, 4], 3) // [4, 1, 2, 3]
rotate([1, 2, 3, 4, 5, 6, 7], 3) // [4, 5, 6, 7, 1, 2, 3]