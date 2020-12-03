import Foundation

/*
Team - Emilia Nedyalkova, Daniela Palova, Velina Tsivneva
*/
func solve(_ text : String) -> String {
    let characters = Array(text)
    var newStringArr = [String]()
    var count = 0
    
    for ch in characters.reversed() {
        if ch != "#" {
            if count == 0 {
                newStringArr.append(String(ch))
            }else{
                count -= 1
            }
        } else { 
            count += 1
        }
    }
    return newStringArr.reversed().joined(separator: "")
}

print(solve("abc##d######"))
print(solve("abd##c"))
print(solve("a#bc#d"))