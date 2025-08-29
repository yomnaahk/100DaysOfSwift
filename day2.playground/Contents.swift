import Cocoa

let firstEmployee = "Yomna"
let secondEmployee = "Younis"
let thirdEmployee = "Doha"
let fourthEmployee = "Yasser"

let employees = [firstEmployee, secondEmployee, thirdEmployee, fourthEmployee]

employees[2]

// set should have unique values, stored in any order
let colors = Set(["red", "green", "blue"])

var name = (first:"Yomna", second : "Ahmed", third : "Kerir")
name.first
name.1

//If you need a specific, fixed collection of related values where each item has a precise position or name, you should use a tuple:

let address = (noHouse:3, street:"Al-Husseini", city:"Damascus")

//If you need a collection of values that must be unique or you need to be able to check whether a specific item is in there extremely quickly, you should use a set:

let plyaers = Set(["mohammed", "ali", "azalea"])

//If you need a collection of values that can contain duplicates, or the order of your items matters, you should use an array:

let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]

//dictionairs

let languages = ["swift": 5, "java": 8, "python": 7]
languages["swift"]

let favouriteIcecream = ["yomna": "vanilla", "ahmed": "chocolate", "doha": "mint"]

favouriteIcecream["yomna"]
favouriteIcecream["ali", default: "Unknown"]


//empty dic
var teams = [String:String]()
var scores = Dictionary<String, Int>()
teams["yomna"] = "red"
teams["ahmed"] = "blue"


//empty array
var results = [Int]()
var finals = Array<Int>()

//empty set
var numbers = Set<Int>()

enum Result{
    case win
    case faliure
}

enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}


let talk = Activity.talking(topic: "football")

enum Planet: Int {
    case mercury
    case venus
    case earth
    case mars
}

let ourPlanet = Planet(rawValue: 2)

