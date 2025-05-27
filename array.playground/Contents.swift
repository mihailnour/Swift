import UIKit

let cities = ["Москва", "Санкт Петербург", "Новосибирск"] // const arr string

var empryArray = [Int]() // var arr int

let zeros = Array(repeating: 0, count: 5) // массив типа [Int], содержащий нулей в количестве 5 штук

let tempetarues: [Double] = [23.5, 24.0, 22.8] // явно указан тип Double

let languages = ["С++", "Swift", "C#"] // Простая проверка пуст ли массив 
if languages.isEmpty {
   print("Массив пустой")
} else {
   print("В массиве есть языки для изучения")
}

print("Мне нужно выучить \(languages.count) языков.") // выводим количество объектов в массиве

if let firstLanguage = languages.first{ // вывод первого элемента массива
   print("Первый язык \(firstLanguage)")
}

if let lastLanguage = languages.last { // вывод последнего элемента массива
   print("последний язык \(lastLanguage)")
}

let animals = ["Кошка", "Собака", "Лошадь", "Кролик"]

print(animals[0]) // другой способ вывода первого элемента массива
print(animals[3]) // другой способ вывода последнего элемента массива

let index = 4
if animals.indices.contains(index) { 
   print("Животное: \(animals[index])")
} else {
   print("Элемент с индексом \(index) не существует")
}

extension Collection {
   subscript(saffe index: Index) -> Element? { //  
       indices.contains(index) ? self[index]: nil
   }
}

var colors = ["Красный", "Зеленый"]
colors.append("Синий")
colors += ["Желтый", "Фиолетовый"]
colors.insert("Оранжевый", at: 2)

let  removedColor = colors.remove(at: 1)
print("Удален цвет: \(removedColor)")


var numbers = [10, 20, 30]
numbers[1] = 25


var number: [Int] = [] // создание пустого массива, в которого будут вгоняться элементы

number.append(2)
number.append(4)
number.append(6)
number.append(8)
number.append(10)
number
number[4] = 12 // изменяем последний элемент массива
number

var temperatures: [Double] = [18.5, 20.0, 22.3, 19.0, 17.8]
var total = 0.0
for temp in temperatures { // сумма всех элементов массива
   total += temp
}
let average = total/Double(temperatures.count) 

let words: [String] = ["apple", "banana", "apricot", "cherry", "avocado"]
let prefix = "a"
var aWords: [String] = []
for word in words { // через префикс добавляем в новый массив слова содержащие нужную нам букву
    if word.hasPrefix(prefix) {
        aWords.append(word)
    }
}
print(aWords)
