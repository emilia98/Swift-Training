import Foundation

func combine(_ arr1 : [Int], _ arr2 : [Int]) {
    var index1 = 0;
    var index2 = 0;
    var min1 = arr1[index1];
    var min2 = arr2[index2];
   
    let count1 = arr1.count;
    let count2 = arr2.count;
    
    var newArr = [Int]();
    
    var i = 0;
    
    while i < (count1 + count2) {
        
        if (min1 <= min2)
        {
            if (index1 < count1)
            {
                newArr.append(min1);
                i += 1;
                index1 += 1;

                if (index1 < count1)
                {
                    min1 = arr1[index1];
                }
                continue;
            }
        }
        
        if (index2 < count2)
        {
            newArr.append(min2);
            i += 1;
            index2 += 1;

            if (index2 < count2)
            {
                min2 = arr2[index2];
            }
        }
        else
        {
            newArr.append(min1);
            i += 1;
            index1 += 1;

            if (index1 < count1)
            {
                min1 = arr1[index1];
            }
        }
    }
    
    print(newArr)
}

combine(
    [1, 2, 3],
    [3, 4, 5, 6]
);
combine(
    [1, 2, 7],
    [3, 4, 5, 6]
);
combine(
    [1, 2, 7],
    [3, 4, 5, 6, 8]
);
combine(
    [1, 3],
    [1, 2]
);
combine(
    [2, 5, 7],
    [1, 1]
);