import UIKit

/*
{ (параметры) -> тип результата in
    тело замыкания (выражения)
*/

let driving = {
    print("Im driving in my car")
}

driving()

let driving2 = {(place: String) in
    print("I'm going to \(place) in my car")
    
}

driving2("London")

func pay(user: String, amount: Int) {
    // code
}

let payment = {(user: String, amount: Int) in
    // code
}

let drivingWithReturn = { (place:String) -> String in
    return "I'm going to \(place) in my car"
}

let messsage = drivingWithReturn("London")

print(messsage)

let payment2 = {(user: String) in
    print("Paying \(user) ...)")
}

let payment3 = {(user: String) -> Bool in
    print ("Paying \(user)...")
    return true
}

// -> Bool in

let payment4 = {() -> Bool in
    print("Paying...")
    return true
}

//func travel(action: () -> Void) {
//    print("I'm getting ready to go")
//    action()
//    print("Im arrived")
//}

//travel(action: driving)

//travel() {
//    print("Im driving in my car")
//}

func animate(duration: Double, animations: () -> Void) {
    print("Starting a \(duration) second animation")
    animations()
}

//animate(duration: 3, animations: {
//    print("Image")
//})

animate(duration: 3) {
    print("Image")
}

func travel(action: (String) -> Void) {
    print("I'm getting ready to go")
    action("London")
    print("Im arrived")
}

travel { (place: String) in
    print("I'm going to \(place) in my car")
}

let changeSpeed = { (speed: Int) in
    print("Changing speed to \(speed)kph")
}

func buildCar(name: String, engine: (Int) -> Void) {
    //build the car
}

func travel2(action: (String) -> String) {
    print("Im getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived")
}

//travel2{ (place: String) -> String in
//    return "I'm going to \(place) in my car"
//}

travel2 {
    "I'm goint to \($0) in my car"
}

func travel3(action: (String, Int) -> String){
    print("I'm getting ready to go.")
    let description = action("London", 60)
    print(description)
    print("I arrived")
}

travel3 {
    "I'm going to \($0) at \($1) miles per hour"
}

func travel4() -> (String) -> Void {
    var counter = 1
    return {
        print("\(counter) I'm going to \($0)")
        counter += 1
    }
}

let result = travel4()

result("London")
result("London")
result("London")

func makeCounter(start: Int) -> () -> Int {
    var currentValue = start
    return {
        currentValue += 1
        return currentValue
    }
}

let counterA = makeCounter(start: 0)
let counterB = makeCounter(start: 10)

let words = ["apple", "banana", "apricot", "cherry", "avocado"]
let aWords = words.filter { word in
    word.hasPrefix("a")
}

let capitalizedAWords = aWords.map{ $0.uppercased() }


func compareAndProcess(
    _ array: [Int],
    compareClosure: (Int, Int) -> Bool,
    completion: ([Int]) -> Void
) {
    let sortedArray = array.sorted(by: compareClosure)
    completion(sortedArray)
}

compareAndProcess([5, 2, 8, 1, 9]) { a, b in
    a > b
} completion: { resultArray in
    print("Отсортированный массив по убыванию: ", resultArray)
}
