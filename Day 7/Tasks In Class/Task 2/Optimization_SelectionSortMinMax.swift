func sort(_ arr : inout [Int]) {
    var i = 0, j = arr.count - 1
    
    while i < j {
        let (min, max) = minMax(arr, i, j)
        
        if i == max && j == min {
            arr.swapAt(i, j)
        } else if i == max {
            arr.swapAt(i, min)
            arr.swapAt(j, min)
        }
        else {
            arr.swapAt(i, min)
            arr.swapAt(j, max)
        }
        
        i += 1
        j -= 1
    }
}

func minMax(_ arr : [Int], _ n : Int, _ m : Int) -> (Int, Int) {
    var min = n, max = n
    
    for i in n...m {
        if arr[i] < arr[min] {
            min = i
        }
        
        if arr[i] > arr[max] {
            max = i
        }
    }
    
    return (min, max)
}

var a = [2, 3, 5, 3, 7, 9, 5]
sort(&a) // & is pointer
print(a)

a = [2, 7, 5, 7, 7, 9]
sort(&a) // & is pointer
print(a)

 a = [9, 3, 7, 3, 5, 6, 8, 2]
sort(&a) // & is pointer
print(a)