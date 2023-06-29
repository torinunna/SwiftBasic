import UIKit

// Optional
var age: Int? = nil
print(age)

age = 12
print(age)


// Unwrapping Optionals
if let unwrapped = age {
    print("age: \(unwrapped)")
} else {
    print("age is missing")
}


// Unwrapping with Guard
func printAge(age: Int?) {
    guard let unwrapped = age else {
        print("age is missing")
        return
    }
    print("age: \(unwrapped)")
}

printAge(age: age)


// Force Unwrapping
let forcedUnwrapped = age!
print(forcedUnwrapped)


// Nil Coalescing
age = nil
let currentAge = age ?? 20


// Optional Chaining
struct Developer {
    var name: String
}

var jason: Developer? = Developer(name: "Jason")
print(jason?.name)

jason = nil
print(jason?.name)


// Typecasting
class Animal {

}

class Cat: Animal {
    
}

class Dog: Animal {
    func bark() {
        print("Bow Wow")
    }
}

let pets: [Animal] = [Cat(), Dog(), Cat(), Dog()]

for pet in pets {
    if let dog = pet as? Dog {
        dog.bark()
    } 
}
