import Cocoa

let firstScore = 10; let secondScore = 20
let total = firstScore + secondScore
let diff = secondScore - firstScore
let multi = firstScore * secondScore
let divi = firstScore / secondScore

let reminder = secondScore % 3

let number = 42
let number2 = number + 42

let fName = "Yomna"
let name = fName + "Ahmed"

let firstHalf = ["a", "b", "c"]
let secondHalf = ["d", "e", "f"]
let all = firstHalf + secondHalf

var score = 55
score -= 5

var quote = "The rain in Spain falls mainly on the "
quote += "Spaniards"

let firstCard = 10; let secondCard = 20
if firstCard + secondCard >= 21{
    print("Yomna's card")
}else{
    print("No One")
}

let age1 = 20; let age2 = 30
if age1 < 20 || age2 < 30{
    print("At least one is over 18")
}

let firstValue = 1; let secondValue = 2
print(firstValue == secondValue ? "cards are equal": "cards are not equal")

let weather = "Sunny"

switch weather{
    case "Sunny":
    print("Today is a sunny day")
    fallthrough
    case "Rainy":
    print("Today is a rainy day")
case "Cloudy":
    print("Today is a cloudy day")
default:
    print("Enjoy your day!")
}

let finalResult = 85
switch score {
case 0..<50:
    print("You Fail")
case 50..<85:
    print("You Passed")
default:
    print("You did great!")
}
