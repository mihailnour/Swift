//import UIKit
//
//var greeting = "Hello, playground"
//
//let countyCodes = ["Ru": "Россия", "US": "США", "CN": "Китай"]
//
//if let country = countyCodes["CN"] {
//    print("Код 'CN' соотыествует стране: \(country)")
//} else {
//    print ("Стара с кодом 'CN' не найдена.")
//}
//
//let ages = ["Anna": 25, "Boris": 30, "Victoriya": 28]
////var emptyDictionary = [String: Int]()
////var studentScores: [String: Double] = [:]
////studentScores.reserveCapacity(20)
//
//
//struct Person: Hashable {
//    let name: String
//    let age: Int
//}
//
//var peopleScores = [Person: Int]()
//
//let person = Person(name: "Alexey", age: 30)
//peopleScores[person] = 95
//print(peopleScores)
//
//if ages.isEmpty{
//    print("Словарь пуст")
//} else {
//    print("В словаре есть данные о возрасте")
//}
//
//print("У нас есть данные о возрасте для \(ages.count) человек.")
//
//let ageofAnna = ages["Anna"]
//print("Возраст Анны: \(ageofAnna ?? 0)")
//
//if let age = ages["Boris"] {
//    print("Возраст Бориса \(age)")
//} else {
//    print("Возраст Бориса неизвестен.")
//}
//
//if ages.keys.contains("Victoriya"){
//    print("Возраст Виктории: \(ages["Victoriya"]!)")
//}
//
//var capitals = ["Франция": "Париж"]
//capitals["Италия"] = "Римский"
//
//print(capitals)
//
//capitals["Япония"] = "Токио"
//
//if let oldValue = capitals.updateValue("Рим", forKey: "Италия") {
//    print("Старое значение: \(oldValue)")
//}
//
//print(capitals)
//
//capitals["Италия"] = nil
//
//if let removedvalue = capitals.removeValue(forKey: "Франция") {
//    print("удалена столица: \(removedvalue)")
//}
//
//print (capitals)
//
//let studentsGrades = ["Алексей": 5, "Мария": 4, "Иван": 5]
//
//for (student, grade) in studentsGrades {
//    print("\(student) получил(а) оценку \(grade)")
//}
//
//for student in studentsGrades.keys {
//    print("студент \(student)")
//}
//
//for grade in studentsGrades.values {
//    print("оценка \(grade)")
//}
//
//let names = studentsGrades.map { (student, grade ) in
//    return student
//}
//
//print (names)
//
//let topStudents = studentsGrades.filter { (students, grade) in
//    grade == 5
//}
//
//print(topStudents)
//
//let totalGrades = studentsGrades.reduce(0) { (result, pair) in
//    result + pair.value
//}
//print("Сумма оценок: \(totalGrades)")


var studentsScores: [String: Int] = [:]
studentsScores["Анна"] = 85
studentsScores["Борис"] = 90
studentsScores["Виктория"] = 95
print(studentsScores)

if let oldvalue = studentsScores.updateValue(88, forKey: "Анна"){
    print(oldvalue)
}
studentsScores["Виктория"] = nil
print (studentsScores)

let countryCapitals = ["Россия": "Москва", "Франция": "Париж", "Германия": "Берлин", "Япония": "Токио"]

print("страна \(countryCapitals.keys) столица: \(countryCapitals.values)")

let country = [String](countryCapitals.keys)
let capitals = [String](countryCapitals.values)

var productPrices = ["Хлеб": 50, "Молоко": 80, "Сыр": 300, "Яблоки": 150]

if let cheesePrice = productPrices["Сыр"] {
    productPrices["Сыр"] = Int(Double(cheesePrice) * 0.9)
}

print(productPrices)

productPrices["Молоко"] = nil
productPrices["Бананы"] = 120

for (product, prices) in productPrices {
    print (product)
    print(prices)
}
