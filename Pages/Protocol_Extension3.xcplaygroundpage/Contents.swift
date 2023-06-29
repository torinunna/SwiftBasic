import UIKit

// Protocol Inheritance
protocol Payable {
    func calculateWages() -> Int
}

protocol Trainable {
    func train(skill: String)
}

protocol HasVacation {
    func takeVacation(days: Int)
}

protocol Employee: Payable, Trainable, HasVacation { }

struct DeveloperEmployee: Employee {
   
    var name: String
    
    func calculateWages() -> Int{
        return 10_000_000
    }
    
    func train(skill: String) {
        print("Study \(skill) hard")
    }
    
    func takeVacation(days: Int) {
        print("take \(days) days off")
    }
}

let choi = DeveloperEmployee(name: "Jason")

choi.calculateWages()
choi.takeVacation(days: 3)
choi.train(skill: "Swift")


// Extension
extension Int {
    func squared() -> Int {
        return self * self
    }
}

let number = 8
number.squared()

extension Int {
    var isEven: Bool {
        return self % 2 == 0
    }
}

number.isEven


// Protocol Extension
extension Collection {
    func summarize() {
        print("There are \(count) members")
    }
}

let stringArray = ["aa", "bb", "cc"]
let numSet = Set([1,2,3,4,5])

stringArray.summarize()

numSet.summarize()


// Protocol Oriented Programming
// protocol -> 역할에 대한 정의 제공
// extension -> 타입에 대한 구현 제공
// protocol extension -> 역할에 대한 기본 구현 제공

extension Payable {
    func calculateWages() -> Int{
        return 10_000_000
    }
}

extension Trainable {
    func train(skill: String) {
        print("Study \(skill) hard")
    }
}

extension HasVacation {
    func takeVacation(days: Int) {
        print("take \(days) days off")
    }
}

struct DesignerEmployee: Employee {
    var name: String
    
    func train(skill: String) {
        print("Practice \(skill) hard 🔥")
    }
}

let jane = DesignerEmployee(name: "Jane")
jane.calculateWages()
jane.takeVacation(days: 4)
jane.train(skill: "Adobe")
