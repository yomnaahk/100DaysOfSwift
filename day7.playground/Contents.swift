import Cocoa

func travel(action: (String) -> Void){
    print("I'm getting ready to go.")
       action("London")
       print("I arrived!")
}

func travel(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}



travel { (place: String) in
    print("I'm going to \(place) in my car")
}


travel { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

travel { place -> String in
    return "I'm going to \(place) in my car"
}

travel { place in
    return "I'm going to \(place) in my car"
}


travel { place -> String in
     "I'm going to \(place) in my car"
}


travel {
    "I'm going to \($0) in my car"
}
