import Cocoa
func printHelp(){
    let message = "Hi, can you help me?"
    print(message)
}

printHelp()

func square(number:Int){
    print(number * number)
}

func rectangle(width:Double, height:Double){
    print(width * height)
}
func circle(radius:Double)->Double{
    return radius * 3.14
}
func sayHello(to name:String){
    print("Hello, \(name)")
}
func greet(_ person:String){
    print("Hi \(person)")
}

func greet(_ person: String, nicely: Bool = true){
    let message = nicely ? "Hello\(person)" : "oh no it's \(person) again"
    print(message)
}

func square(numbers: Int...) {
    for number in numbers {
        print("\(number) squared is \(number * number)")
    }
}

enum PasswordError:Error{
    case tooShort
    case empty
}

func checkPassword(_ password : String) throws ->Bool{
    if password.isEmpty{
        throw  PasswordError.empty
    }
    return true
}

func doubleInPlace(number: inout Int){
    number *= 2
}
square(numbers: 1, 2, 5, 7, 8)
square(number:8)
rectangle(width: 10, height:45)
circle(radius: 10)
sayHello(to: "manager")
greet("Yomna")
greet("Huda", nicely: false)
square(numbers: 1, 2, 5, 7, 8)

do {
    try checkPassword("yyy")
    print("That password is good!")
} catch {
    print("You sholud enter a valid password")
}

var myNum = 10
doubleInPlace(number: &myNum)
