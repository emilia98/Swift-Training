import Foundation

class Person {
    var name, town : String
    
    init(_ name : String, _ town : String) {
        self.name = name
        self.town = town
    }
}

func solve(_ arr: [String]) {
    var people = [Person]()
    for data in arr {
        let person = getPerson(data)
        people.append(person)
    }
    
    people = people.sorted(by: { $0.town < $1.town })
                   .sorted(by: { $0.name < $1.name })
    
    // Alternative way not to use a way to combine all the people from the same town
    var prevTown = "";
    for person in people {
        if (prevTown != person.town) {
            print(person.town)
        }
        
        print("   \(person.name)")
        prevTown = person.town
    }
    
    print(people)
}

func getPerson(_ text: String) -> Person {
    var values = Array<String>()
    var tempValue = ""
    
    for ch in text {
        if (ch != ",") {
            tempValue += String(ch)
        } else {
            tempValue = tempValue.trimmingCharacters(in: .whitespaces)
            values.append(tempValue)
            tempValue = ""
        }
    }
    
    tempValue = tempValue.trimmingCharacters(in: .whitespaces)
    values.append(tempValue)
    
    let name = values[0]
    let town = values[1]
    
    var person = Person(name, town)
    return person
}

solve(
    [
        "  Иван Иванов, София",
        "Петър, Пловдив",
        "Никола, София",
        "Деница, Варна",
        "Жельо, Пловдив"
    ]
)