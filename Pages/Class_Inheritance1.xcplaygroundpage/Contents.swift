import UIKit

class Dog {
    var name: String
    var breed: String
    
// Class -> membership initializer X
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
    
    func bark() {
        print("bow wow")
    }
}

let milk = Dog(name: "milk", breed: "Collie")

milk.name
milk.breed


// Class Inheritance
class Collie: Dog {
    init(name: String) {
        super.init(name: name, breed: "Collie")
    }
    
// Overriding Method
    override func bark() {
        print("wal wal")
    }
}

let noony = Dog(name: "Nooni", breed: "Poodle")
let milky = Collie(name: "milky")

milky.breed

noony.bark()
milky.bark()

