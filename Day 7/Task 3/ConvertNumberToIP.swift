func solve(_ num : Int) {
    print(convertToIP(num))
}

func convertToIP(_ num : Int) -> String {
    var tempNum = num
    var ipComponents = [Int]()
    var currentComponent = 0
    
    while (tempNum > 0) {
        currentComponent = tempNum % 256
        tempNum /= 256
        ipComponents.append(currentComponent)
    }
    
    while (ipComponents.count < 4) {
        ipComponents.append(0)
    } 
    
    return formatIp(ipComponents)
}

func formatIp(_ ipComponents : [Int]) -> String {
    var result = ""
    
    for i in stride(from: ipComponents.count - 1, through: 0, by: -1) {
        result += "\(String(ipComponents[i]))"
        result += (i > 0 ? "." : "")
    }
    
    return result
}

solve(257) // 0.0.1.1
solve(789) // 0.0.3.21