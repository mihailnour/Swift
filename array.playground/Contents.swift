//import UIKit
//
//let cities = ["Москва", "Санкт Петербург", "Новосибирск"] // const arr string
//
//var empryArray = [Int]() // var arr int
//
//let zeros = Array(repeating: 0, count: 5) // массив типа [Int], содержащий 5 нулей
//
//let tempetarues: [Double] = [23.5, 24.0, 22.8] // явно указали тип Double
//
//let languages = ["С++", "Swift", "C#"]
//if languages.isEmpty {
//    print("Массив пустой")
//} else {
//    print("В массиве есть языки для изучения")
//}
//
//print("Мне нужно выучить \(languages.count) языков.")
//
//if let firstLanguage = languages.first{
//    print("Первый язык \(firstLanguage)")
//}
//
//if let lastLanguage = languages.last {
//    print("последний язык \(lastLanguage)")
//}
//
//let animals = ["Кошка", "Собака", "Лошадь", "Кролик"]
//
//print(animals[0])
//print(animals[3])
//
//let index = 4
//if animals.indices.contains(index) {
//    print("Животное: \(animals[index])")
//} else {
//    print("Элемент с индексом \(index) не существует")
//}
//
//extension Collection {
//    subscript(saffe index: Index) -> Element? {
//        indices.contains(index) ? self[index]: nil
//    }
//}
//
//var colors = ["Красный", "Зеленый"]
//colors.append("Синий")
//colors += ["Желтый", "Фиолетовый"]
//colors.insert("Оранжевый", at: 2)
//
//let  removedColor = colors.remove(at: 1)
//print("Удален цвет: \(removedColor)")
//
//
//var numbers = [10, 20, 30]
//numbers[1] = 25

// dz

//var number: [Int] = []
//
//number.append(2)
//number.append(4)
//number.append(6)
//number.append(8)
//number.append(10)
//number
//number[4] = 12
//number

//2
//var temperatures: [Double] = [18.5, 20.0, 22.3, 19.0, 17.8]
//var total = 0.0
//for temp in temperatures {
//    total += temp
//}
//let average = total/Double(temperatures.count)

//3
let words: [String] = ["apple", "banana", "apricot", "cherry", "avocado"]
let prefix = "a"
var aWords: [String] = []
for word in words {
    if word.hasPrefix(prefix) {
        aWords.append(word)
    }
}
print(aWords)
