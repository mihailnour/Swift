//import UIKit
//
//var str = "Hello, my playground"
//
//Float(4)
//Int(4.3)
//
//let integer: Int? = Int("sdsdsds")
//let constFive: Int = 5
////constFive + integer
//// nil
//
//// Strint? Float? Double? Bool?
//
//if integer != nil {
//    print("integer is not empty")
//} else {
//    print("integer is empty")
//}
//
//if let unwrappedValue = integer {
//    constFive + unwrappedValue
//}
//
////enum Optional<T> {
////    case some<T>
////    case none
////}
//
//var stringOptinal: String? = "hello"
//stringOptinal = Optional<String>.some("hello")
//stringOptinal = Optional<String>.none
//
//print(stringOptinal)
//
//if let firstNumber = Int("4"),
//   let secondNumber = Int("99"),
//   firstNumber < secondNumber && secondNumber < 101 {
//    print("\(firstNumber) < \(secondNumber) < 100")
//}
//
//let newVar = Int("4") ?? 0
//
//var implicityUnwrappedValue: Int! = Int("sdasdaas")
//if let value = implicityUnwrappedValue {
//    value + constFive
//} else {
//    print("else")
//}
//
////var normalInt: Int = implicityUnwrappedValue!
//
//print(implicityUnwrappedValue)
//
////implicityUnwrappedValue + constFive

//dz

//1

//func average( _ num1: Double, _ num2: Double?) -> Double {
//    if let num2 {
//        return (num1+num2)/2.0
//    } else {
//        return num1
//    }
//}

//2

//var optionalScore: Int? = nil
//let zxc = optionalScore ?? 0
//print(zxc)

//3
var userName: String? = nil
if let trer = userName {
    print("hello, \(trer)")
} else {
    print("Hello, Guest")
}
