func solve(_ text : [Int], _ words : [Int]) {
    var dict = [Int: [Int]]()
    dict[words[0]] = []
    dict[words[1]] = []
    dict[words[2]] = []
    
    // Get the indexes of each word occurrences
    for i in 0..<text.count {
        let word = text[i]
        
        if dict[word] != nil {
           dict[word]?.append(i)
        }
    }
    
    // Sort in ascending order the count of occurrences of each word
    let sortedDict = dict.sorted { $0.1.count < $1.1.count }
    
    // Stores the end index of the range (as we know the beginning of the range)
    var endIndex = 0
    // Stores the ranges of all the occurrences
    var ranges = [(Int, Int)]()
    
    // For all the occurrences of the element which occurs the less 
    // from the given array of words
    for index in sortedDict[0].value {
        /*
            We will separate the search of the words given
            into two parts
            - the first part will search for the other given words
              on the left side of the current occurrence of the less
              occurrent word
            - the second part will search on the right
        */
        
        // The middle of both searches
        let mid = index
        // A set, which will hold the occurrences of each of the given words
        // It will help us to determine if all the words are contained
        // in each of the parts serach
        var wordsOccurrenes = Set<Int>()
      
        // The first value to insert is the word with less occurrences
        wordsOccurrenes.insert(sortedDict[0].key)
        
        // Left part search
        for x in stride(from: mid - 1, through: 0, by: -1) {
            if (words.contains(text[x])) {
                wordsOccurrenes.insert(text[x])
            }
            
            // Since we are looking for the shortest
            // subpart to contain all the words
            // there is no need to search anymore, after
            // we have found all the words in the subpart
            if wordsOccurrenes.count == words.count {
                endIndex = x
                break
            }
        }
        
        // Store the range in the format -> (start, end) of the range
        if wordsOccurrenes.count == words.count {
            ranges.append((endIndex, mid))
        }
        
        // Reset
        wordsOccurrenes = Set<Int>()
        wordsOccurrenes.insert(sortedDict[0].key)
        endIndex = 0
        
        // We do the same for the right part
        for x in stride(from: mid + 1, to: text.count, by: 1) {
            if (words.contains(text[x])) {
                wordsOccurrenes.insert(text[x])
            }
            
            if wordsOccurrenes.count == words.count {
                endIndex = x
                break
            }
        }
        
        if wordsOccurrenes.count == words.count {
            ranges.append((mid, endIndex))
        }
    }
    
    formatOutput(ranges, text)
}

func findShortestPathIndex(_ ranges: [(start: Int, end: Int)]) -> Int {
    if ranges.count == 0 {
        return -1
    }
    
    var shortestPath = ranges[0].end - ranges[0].start
    var shortestIndex = 0
    
    for i in 1..<ranges.count {
        let start = ranges[i].start
        let end = ranges[i].end
        let currentPath = end - start
        
        if currentPath < shortestPath {
            shortestPath = currentPath
            shortestIndex = i
        }
    }
    
    return shortestIndex
}

func formatOutput(_ ranges: [(Int, Int)], _ text: [Int]) {
    let shortestPathIndex = findShortestPathIndex(ranges)
    
    if (shortestPathIndex == -1) {
        print("No occurrences found")
        return
    } 
    
    let (start, end) = ranges[shortestPathIndex]
  
    var result = [Int]()
    
    for i in start...end {
        result.append(text[i])
    } 
    
    print(result)
}

// [5, 1, 6, 7]
solve(
    [6, 5, 1, 6, 7, 6, 3, 6, 2, 6, 5, 1, 6],
    [6, 7, 5]
)


// [7, 6, 3, 2, 5]
solve(
    [6, 3, 1, 6, 7, 6, 3, 2, 5, 6, 3, 1, 5],
    [6, 7, 5]
)

// No occurrences found
solve(
    [6, 5, 1, 6, 7, 6, 7, 6, 2, 6, 3, 1, 5],
    [6, 7, 10]
)

// [7, 5, 6]
solve(
    [6, 5, 1, 6, 7, 5, 6, 6, 2, 6, 3, 1, 5],
    [6, 7, 5]
)