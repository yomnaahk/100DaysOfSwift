import Cocoa

//colsure without parameters or return value
var greeatin = {
    print("Hello")
}

//homework1
var sayHello = {
    print("Hello, Swift")
}

//homework2
let greetingEmployee = { (name: String) in
    print("Hello \(name), welocme in our company")
}

//homework3
let sumNumbers = { (num1: Int, num2: Int) -> Int in
    return num1 + num2
}

//homework4
func repeatTask(times: Int, action: () -> Void){
    for val in 0..<times{
        action()
    }
}

//homework5
let numbers = [1, 2, 3, 4, 5, 6]
let evenNumbers = numbers.filter { $0 % 2 == 0 }
let oddNumbers = numbers.filter { $0 % 2 != 0 }
let mapNumbers = numbers.map { 2 * $0 }
let sum = numbers.reduce(0){
    $0 + $1
}

//closure with parameter
let driving = { (place: String) in
    
    print("I'm driving to \(place)")
}

//closure with parameter and return value
let travel = { (place: String) -> String in
    return "I'm travelling to \(place)"
}

//using closure as a fuction paramertes
func travel (action: () -> Void){
    print("I'm geeting ready to go")
    action()
    print("Now I'm on my way")
}

//closure with parameter as func arguments
func travel(action: (String) -> Void){
    print("I’m getting ready to go.")
        action("Palestine")
        print("I arrived!")
}

// Closures Returning Values as Function Arguments
func travel(action: (String) -> String){
    print("I’m getting ready to go.")
       let place =  action("Iraq")
        print(place)
        print("I arrived!")
}

//Returning Closures From Functions

func trip() -> (String) -> Void{
    return {
            print("I’m going to \($0)")
        }

}

//Capturing Values
func travels() -> (String) -> Void {
    var counter = 1
    return {
        print("\(counter). I’m going to \($0)")
        counter += 1
    }
}


//homework Calls
sayHello()
greetingEmployee("Yomna")
greetingEmployee("Ali")
let resultSum = sumNumbers (10, 20)
print("The sum of 2 numbers = \(resultSum)")

repeatTask(times: 3){
    print("Repeated Task")
}

print(numbers)
print(evenNumbers)
print(oddNumbers)
print(mapNumbers)
print(sum)


greeatin()
driving("London")
let message = travel("America")
print(message)

travel {
    print("To Europe")
}

travel { place in
    print("To \(place)")
}

travel { place in
    return "I'm going to \(place)"
}

//Shorthand Parameter Names $0 for the first param, $1 for the second and so on..
travel {
    "I’m going to \($0)"
}

let destination = trip()
destination("Paris")

let result = travels()
result("Syria") // 1. I’m going to Syria
result("Turkey")  // 2. I’m going to Turkey




