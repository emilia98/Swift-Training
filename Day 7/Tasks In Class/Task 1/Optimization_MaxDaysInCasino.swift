func max(_ a : [Int]) -> (Int, Int) {
    var maxIndex1 = 0, maxIndex2 = 1
    
    for i in 1..<a.count {
        if a[i] > a[maxIndex1] {
            maxIndex2 = maxIndex1
            maxIndex1 = i
        }
    }
    
    if maxIndex1 == 0 {
        for i in 2..<a.count {
            if a[i] > a[maxIndex2] {
                maxIndex2 = i
            }
        }
    }
    
    return (maxIndex1, maxIndex2)
}

func maxPlayDays(_ heaps: [Int]) -> Int {
    var heaps = heaps
    var res = 0
    
    while true {
        var (a, b) = max(heaps)
        
        if heaps[a] == 0 || heaps[b] == 0 {
            break
        }
        
        heaps[a] -= 1
        heaps[b] -= 1
        res += 1
        
        print(heaps[0], heaps[1], heaps[2])
    }
    
    return res
}

var days = maxPlayDays([4, 1, 2])
print("Days = \(days)")