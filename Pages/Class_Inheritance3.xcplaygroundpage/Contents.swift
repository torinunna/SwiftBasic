import UIKit

// Mutability
class Human {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    deinit {
        print("deinitailze instance: \(name)")
    }
    
    func printName() {
        print("My name is \(name)")
    }
    
    func updateName(to name: String) {
        print("My name is \(name)")
    }
}

let sean = Human(name: "Sean")
sean.name
sean.updateName(to: "Son")
sean.name


// Choosing Between Structures and Classes  https://developer.apple.com/documentation/swift/choosing-between-structures-and-classes
