import UIKit

// Closure
    // { (parameters) -> return type in
    //    statements
    // }

let checking = {
    print("checking 🔥🔥🔥")
}
checking()


// Input Parameter
let checking2 = { (id: String) in
    print("checking 🔥🔥🔥 id: \(id)")
}
checking2("user123")


// Returning Value
let checking3 = { (id: String) -> Bool in
    if id == "user000" {
        return false
    }
    return true
}
let isValid = checking3("user123")
//let isValid = checking3("user000")
print(isValid)
