import Cocoa

let driving = {
    print("I'm driving in my car")
}

let email = { (to: String, from: String) in
    print("This email send by \(from) to \(to)")
}

let cooking = { (recipe: String, cooker: String)-> String in
    
    return "\(cooker) will cook the \(recipe)"
}

func travel(action: () -> Void){
    print("I'm getting ready to go.")
      action()
      print("I arrived!")
}

driving()

email("Yomna", "Amena")

let todayMeal = cooking("Pizza", "Amena")
print(todayMeal)

travel(action: driving)
travel(){
    print("I'm driving in my car")
}
travel{
    print("I'm driving in my car")
}
