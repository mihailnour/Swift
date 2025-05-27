import UIKit

let  evenNumbers: Set<Int> = [2, 4, 6, 8]
print (evenNumbers)

var fruits: Set = ["Apple", "Orange", "Banana"] // Type inference: Set<String>

var emptySet = Set<Int>() // пустое множество Int
print(emptySet.isEmpty) // true

var emptyString: Set<String> = [] // Пустое множество String (Литерал пустого массива, но тип определен как Set<String>)

let setofChar: Set<Character> = ["A", "B", "C", "A"]
print(setofChar) // Дубликат "A" будет выброшен

var numbers: Set<Int> = [1, 2, 3]
let result = numbers.insert(3) // insert добавляем в множество новое число
print(numbers) //
print(result.inserted) // false, т.к. 3 уже было в множестве
numbers.insert(4) // true, т.к. 4 нету в множестве
print(numbers)

var chars: Set<Character> = ["A", "B", "C"]
chars.remove("B") // удаляем "B", возвращаем Optional("B")
print(chars)

let removed = chars.remove("Z")
print(removed as Any) // nil(элемент "Z" не найден в множестве)
print(chars)

chars.removeAll() // очистка множества
print(chars.isEmpty) // true
 
let people: Set<String> = ["Alice", "Bob", "Eve"]
print(people.contains("Bob")) // true
print(people.contains("Charlie")) // false

var primes: Set<Int> = [2, 3, 5, 7, 11]
print(primes.count)
print(primes.isEmpty)

primes.removeAll()
print(primes.count)
print(primes.isEmpty)

let olympicRings: Set<String> = ["Blue", "Yellow", "Black", "Green", "Red"]
for color in olympicRings {
    print("Кольцо цвета: \(color)")
}

olympicRings.forEach { color in // результат в произвольном порядке, пройдет по всем элементам множества и выведет в верхнем регистре
    print(color.uppercased())
}

struct Person: Hashable {
    let id: Int
    let name: String
    
    static func ==(lhs: Self, rhs: Self) -> Bool {
         lhs.id == rhs.id && lhs.name == rhs.name
    }
    func hash(into hasher: inout Hasher){
        hasher.combine(id)
        hasher.combine(name)
    }
}

var team: Set<Person> = []

team.insert(Person(id: 1, name: "Igor"))
team.insert(Person(id: 2, name: "Rodion"))
team.insert(Person(id: 1, name: "Igor"))

print(team.count)

var FavoriteSport: Set<String> = []
FavoriteSport.insert("Football")
FavoriteSport.insert("Basketball")
FavoriteSport.insert("Chess")
print(FavoriteSport)
FavoriteSport.remove("Chess")
print(FavoriteSport)

if FavoriteSport.contains("Hockey") == true {
    print("в множестве favoriteSport содержится Hockey")
} else {
    FavoriteSport.insert("Hockey")
}
print(FavoriteSport)

var uniqueNumbers: Set<Int> = [1, 2, 3, 3, 2, 4, 5]
for nums in uniqueNumbers {
    print(nums)
}

var firstSet: Set<Int> = [1, 2, 3, 4]
var secondSet: Set<Int> = [3, 4, 5 ,6]
let C = firstSet.union(secondSet)
print(C)
let D = firstSet.intersection(secondSet)
print(D)
let F = firstSet.subtracting(secondSet)
print(F)
let E = firstSet.symmetricDifference(secondSet)
print(E) 
