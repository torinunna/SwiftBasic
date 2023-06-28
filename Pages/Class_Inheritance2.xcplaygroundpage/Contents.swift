import UIKit

final class Dog {
    var name: String
    var breed: String
    
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

func bark() {
    print("bow wow")
}

// Error -> Inheritance from a final class 'Dog'
//    class Collie: Dog {
//        init(name: String) {
//            super.init(name: name, breed: "Collie")
//        }
//
//        override func bark() {
//            print("wal wal")
//        }
//    }


// Copying Object
// Class -> reference
class StudentClass {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

var studentClass1 = StudentClass(name: "Jacob")
var studentClass2 = studentClass1

studentClass2.name = "Jay"
studentClass1.name
studentClass2.name

// Struct -> Value
struct StudentStruct {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

var studentStruct1 = StudentStruct(name: "Jacob")
var studentStruct2 = studentStruct1

studentStruct2.name = "Jay"
studentStruct1.name
studentStruct2.name


// Deinitalizer
class Human {
    var name: String
    
    init(name: String) {
        self.name = name
        print("initailze instance")
    }
    
    deinit {
        print("deinitialize instance \(name)")
    }
    
    func printName() {
        print("my name is \(name)")
    }
}

func createJohn() {
    let john = Human(name: "John")
    john.printName()
}

createJohn()
